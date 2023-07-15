local Terminal = require("toggleterm.terminal").Terminal

local lazydocker = Terminal:new { cmd = "lazydocker", hidden = true }
local btop = Terminal:new { cmd = "btop", hidden = true }
local tab = Terminal:new { direction = "tab", hidden = false }

local app_toggles = {
  lazydocker = function() lazydocker:toggle() end,
  btop = function() btop:toggle() end,
  tab = function() tab:toggle() end,
}
return app_toggles
