local status = require "astronvim.utils.status"

local statusline = {
  hl = { fg = "fg", bg = "bg" },
  status.component.mode(),
  status.component.file_info {
    file_modified = { padding = { left = 0, right = 0 } },
    filetype = false,
    filename = false,
    file_icon = false,
  },
  status.component.git_branch(),
  status.component.git_diff(),
  status.component.fill(),
  status.component.cmd_info(),
  status.component.fill(),
  status.component.diagnostics(),
  status.component.lsp(),
  status.component.treesitter(),
  status.component.nav(),
}

return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    opts.statusline = statusline
    opts.winbar = nil
    return opts
  end,
}
