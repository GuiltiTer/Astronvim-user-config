local Terminal = require("toggleterm.terminal").Terminal

local lazydocker = Terminal:new { cmd = "lazydocker", hidden = true }
local btop = Terminal:new { cmd = "btop", hidden = true }

local app_toggles = {
  lazydocker = function() lazydocker:toggle() end,
  btop = function() btop:toggle() end,
}
return app_toggles
