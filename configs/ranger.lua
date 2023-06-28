return {
  config = function()
    local ranger = require("ranger-nvim")
    ranger.setup({
      enable_cmds = false,
      replace_netrw = false,
      keybinds = {
        ["ov"] = ranger.OPEN_MODE.vsplit,
        ["oh"] = ranger.OPEN_MODE.split,
        ["ot"] = ranger.OPEN_MODE.tabedit,
      }
    })
  end,
}
