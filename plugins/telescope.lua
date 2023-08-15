return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", enabled = vim.fn.executable "make" == 1, build = "make" },
  },
  config = require "plugins.configs.telescope",
  opts = function(_, opts)
    require("telescope").load_extension "file_browser"
    return opts
  end,
}
