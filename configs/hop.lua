local M = {}
M.keys = {}
local hop = function() return require("hop") end
local direction = function() return require("hop.hint").HintDirection end

-- default keys: "etovxqpdygfblzhckisuran"
M.config = function() hop().setup({ keys = "asdfghjkl;weruionmcv" }) end

M.keys.char_line_after = function()
  hop().hint_char1({
    direction = direction().AFTER_CURSOR })
end

M.keys.char_line_before = function()
  hop().hint_char1({
    direction = direction().BEFORE_CURSOR })
end

M.keys.char_line_after_till = function()
  hop().hint_char1({ direction = direction().AFTER_CURSOR, hint_offset = -1 })
end

M.keys.char_line_before_till = function()
  hop().hint_char1({ direction = direction().BEFORE_CURSOR, hint_offset = 1 })
end


return M
