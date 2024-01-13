local config = function()
  local ranger = require "ranger-nvim"
  ranger.setup {
    enable_cmds = false,
    replace_netrw = false,
    keybinds = {
      ["ov"] = ranger.OPEN_MODE.vsplit,
      ["oh"] = ranger.OPEN_MODE.split,
      ["ot"] = ranger.OPEN_MODE.tabedit,
    },
    ui = {
      border = "rounded",
      height = 0.80,
      width = 0.88,
      x = 0.5,
      y = 0.5,
    },
  }
end

return { "kelly-lin/ranger.nvim", config = config, lazy = false }
