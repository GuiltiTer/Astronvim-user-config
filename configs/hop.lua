local M = {}
M.keys = {}
local hop = function() return require("hop") end
local direction = function() return require("hop.hint").HintDirection end

-- default keys: "etovxqpdygfblzhckisuran"
M.config = function() hop().setup({ keys = "asdfghjkl;weruionmcv" }) end

M.keys.char_line_after = function()
  hop().hint_char1({
    direction = direction().AFTER_CURSOR, current_line_only = true })
end

M.keys.char_line_before = function()
  hop().hint_char1({
    direction = direction().BEFORE_CURSOR, current_line_only = true })
end

M.keys.char_line_after_till = function()
  hop().hint_char1({ direction = direction().AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end

M.keys.char_line_before_till = function()
  hop().hint_char1({ direction = direction().BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end


return M
