-- pandoc Lua 过滤器：把本书 LaTeX 源码中的自定义环境映射为 typst/common/template.typ 中的函数，
-- 并处理中文与西文、公式之间的空格。由 tex2typ.py 调用，不单独使用。

local utf8 = utf8

-- 中日韩文字（不含标点）
local function is_cjk_char(c)
  return (c >= 0x3400 and c <= 0x9FFF) or (c >= 0xF900 and c <= 0xFAFF) or (c >= 0x20000 and c <= 0x2FFFF)
end

-- 全角标点及中文引号、省略号、破折号
local function is_cjk_punct(c)
  return (c >= 0x3000 and c <= 0x303F) or (c >= 0xFF00 and c <= 0xFFEF)
    or c == 0x201C or c == 0x201D or c == 0x2018 or c == 0x2019
    or c == 0x2026 or c == 0x2014 or c == 0x00B7
end

local function is_cjk(c) return c and (is_cjk_char(c) or is_cjk_punct(c)) end

local function first_char(el)
  local s = pandoc.utils.stringify(el)
  if s == "" then return nil end
  for _, c in utf8.codes(s) do return c end
end

local function last_char(el)
  local s = pandoc.utils.stringify(el)
  if s == "" then return nil end
  local last
  for _, c in utf8.codes(s) do last = c end
  return last
end

local function is_space(el) return el.t == "Space" or el.t == "SoftBreak" end

-- 半角标点 , . ; : ? ! )：后面接汉字时 xeCJK 加一个西文与中文之间的间距（ecglue），Typst 不加
local function is_ascii_punct(c)
  return c == 0x2C or c == 0x2E or c == 0x3B or c == 0x3A or c == 0x3F or c == 0x21 or c == 0x29
end

-- 字符串中半角标点直接接汉字时，在中间补一个空格
local function space_after_punct(s)
  local out, prev = {}, nil
  for _, c in utf8.codes(s) do
    if prev and is_ascii_punct(prev) and is_cjk_char(c) then out[#out + 1] = " " end
    out[#out + 1] = utf8.char(c)
    prev = c
  end
  return table.concat(out)
end

-- 1. 去掉与中文相邻的空格和换行（LaTeX 中 xeCJK 会忽略它们，Typst 则会排出空格）；
-- 2. 行内公式与中文文字相邻时补一个空格（对应 xeCJK 自动加的间距），与全角标点相邻时不加。
function Inlines(inlines)
  local out = pandoc.List()
  for i, el in ipairs(inlines) do
    if is_space(el) then
      local prev = out[#out]
      local nxt = inlines[i + 1]
      local drop = false
      if prev and nxt then
        local a = prev.t ~= "Math" and last_char(prev) or nil
        local b = nxt.t ~= "Math" and first_char(nxt) or nil
        if is_cjk(a) or is_cjk(b) then
          drop = true
          -- 半角标点与后面汉字之间的空格保留（同 xeCJK）
          if a and is_ascii_punct(a) and b and is_cjk_char(b) then drop = false end
          -- 公式与中文文字之间保留一个空格
          if prev.t == "Math" and b and is_cjk_char(b) then drop = false end
          if nxt.t == "Math" and a and is_cjk_char(a) then drop = false end
        end
      end
      if not drop then
        if not (prev and is_space(prev)) then out:insert(pandoc.Space()) end
      end
    else
      local prev = out[#out]
      if prev and el.t == "Math" and el.mathtype == "InlineMath" and prev.t ~= "Math" and not is_space(prev) then
        if is_cjk_char(last_char(prev) or 0) then out:insert(pandoc.Space()) end
      elseif prev and prev.t == "Math" and prev.mathtype == "InlineMath" and el.t ~= "Math" then
        if is_cjk_char(first_char(el) or 0) then out:insert(pandoc.Space()) end
      end
      if el.t == "Str" then el = pandoc.Str(space_after_punct(el.text)) end
      -- 半角标点结尾的元素后直接接汉字开头的文字
      if prev and el.t == "Str" and prev.t == "Str" and is_ascii_punct(last_char(prev) or 0)
        and is_cjk_char(first_char(el) or 0) then out:insert(pandoc.Space()) end
      out:insert(el)
    end
  end
  return out
end

-- 独立公式后接着写的文字属于同一段，LaTeX 不缩进；Typst 会把它当作新段落缩进，所以加 #noindent
function Para(p)
  local out = pandoc.List()
  local after_display = false
  local last_display = nil
  for _, el in ipairs(p.content) do
    -- 紧挨着的两个独立公式 \[..\]\[..\] 合成一个多行公式，否则 Typst 中间会多出一个空段落
    if el.t == "Math" and el.mathtype == "DisplayMath" and after_display and last_display then
      last_display.text = "\\begin{gathered}" .. last_display.text:gsub("^\\begin{gathered}(.*)\\end{gathered}$", "%1")
        .. "\\\\" .. el.text .. "\\end{gathered}"
      while #out > 0 and is_space(out[#out]) do out:remove() end
      goto continue
    end
    if after_display and not is_space(el) then
      out:insert(pandoc.RawInline("typst", "#noindent;"))
      after_display = false
    end
    out:insert(el)
    if el.t == "Math" and el.mathtype == "DisplayMath" then after_display = true; last_display = el
    elseif not is_space(el) then last_display = nil end
    ::continue::
  end
  p.content = out
  return p
end

function Header(h)
  h.identifier = ""
  return h
end

local function to_typst(inlines)
  local doc = pandoc.Pandoc({ pandoc.Plain(inlines) })
  return (pandoc.write(doc, "typst"):gsub("%s+$", ""))
end

-- 取出 Div 开头那个 Span（LaTeX 环境的第一个必选参数，如 blk 的标题、multicols 的栏数）
local function take_arg(div)
  local first = div.content[1]
  if first and (first.t == "Para" or first.t == "Plain") and first.content[1] and first.content[1].t == "Span" then
    local span = table.remove(first.content, 1)
    while first.content[1] and is_space(first.content[1]) do table.remove(first.content, 1) end
    if #first.content == 0 then table.remove(div.content, 1) end
    return span.content
  end
  return nil
end

local function wrap(open, div)
  local blocks = pandoc.List({ pandoc.RawBlock("typst", open .. "[") })
  blocks:extend(div.content)
  blocks:insert(pandoc.RawBlock("typst", "]"))
  return blocks
end

local simple = {
  ex = "#exercise",
  example = "#example",
  solution = "#solution",
  analyze = "#analyze",
  rmk = "#rmk",
  note = "#note",
  proof = "#proof",
  bookproof = "#proof",
  center = "#align(center)",
  figcenter = "#fig-center",
  flushright = "#align(right)",
  subcap = "#subcap",
}

function Div(div)
  local cls = div.classes[1]
  if simple[cls] then return wrap(simple[cls], div) end
  if cls == "blk" then
    local title = take_arg(div) or {}
    return wrap("#blk[" .. to_typst(title) .. "]", div)
  end
  if cls == "multicols" then
    local n = pandoc.utils.stringify(take_arg(div) or { pandoc.Str("2") })
    return wrap("#cols(" .. n .. ")", div)
  end
  return nil
end
