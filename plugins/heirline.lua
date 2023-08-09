local status = require "astronvim.utils.status"

local vscode_like_winbar = {
  init = function(self) self.bufnr = vim.api.nvim_get_current_buf() end,
  fallthrough = false,
  {
    condition = function() return not status.condition.is_active() end,
    status.component.separated_path { path_func = status.provider.filename { modify = ":.:h" } },
    status.component.file_info {
      file_icon = { hl = status.hl.file_icon "winbar", padding = { left = 0 } },
      file_modified = false,
      file_read_only = false,
      hl = status.hl.get_attributes("winbarnc", true),
      surround = false,
      update = "BufEnter",
    },
  },
  {
    status.component.separated_path { path_func = status.provider.filename { modify = ":.:h" } },
    status.component.file_info {
      file_icon = { hl = status.hl.filetype_color, padding = { left = 0 } },
      file_modified = false,
      file_read_only = false,
      hl = status.hl.get_attributes("winbar", true),
      surround = false,
      update = "BufEnter",
    },
    status.component.breadcrumbs {
      icon = { hl = true },
      hl = status.hl.get_attributes("winbar", true),
      prefix = true,
      padding = { left = 0 },
    },
  },
}

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
    opts.winbar = vscode_like_winbar
    return opts
  end,
}
