local button = require("astronvim.utils").alpha_button

local actions = {
  button("LDR o", "  " .. "File Manager"),
  button("LDR f p", "  " .. "TODOs"),
}

local logo = {
  "                 ▄   ▄                 ",
  "             ▄█▄ █▀█▀█ ▄█▄             ",
  "            ▀▀████▄█▄████▀▀            ",
  "                 ▀█▀█▀                 ",
  "                                       ",
  "                                       ",
  "    █▀▀ █░█ █ █░░ ▀█▀ █ ▀█▀ █▀▀ █▀█    ",
  "▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀",
  "    █▄█ █▄█ █ █▄▄ ░█░ █ ░█░ ██▄ █▀▄    ",
}

return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    opts.section.header.val = logo
    opts.section.buttons.val = actions
  end,
  enabled = true,
}
