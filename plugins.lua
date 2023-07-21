return {
  { "Exafunction/codeium.vim", event = "InsertEnter" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false },
  { "debugloop/telescope-undo.nvim", config = function() require("telescope").load_extension "undo" end, lazy = false },
  { "direnv/direnv.vim", lazy = false },
  { "dracula/vim", name = "dracula", priority = 1000, lazy = false },
  { "folke/twilight.nvim", cmd = "Twilight" },
  { "goolord/alpha-nvim", opts = require("user.configs.alpha").opts },
  { "karb94/neoscroll.nvim", config = require("user.configs.neoscroll").config, lazy = false },
  { "kelly-lin/ranger.nvim", config = require("user.configs.ranger").config, lazy = false },
  { "marko-cerovac/material.nvim", priority = 1000, lazy = false },
  { "mbbill/undotree", name = "undotree", cmd = "UndotreeToggle" },
  { "nvim-neo-tree/neo-tree.nvim", opts = require("user.configs.neo-tree").opts },
  { "nyoom-engineering/oxocarbon.nvim", priority = 1000, lazy = false },
  { "okuuva/auto-save.nvim", event = { "InsertLeave", "TextChanged" }, opts = require("user.configs.auto-save").opts },
  { "rcarriga/nvim-notify", config = require("user.configs.notify").config, lazy = false },
  { "rebelot/heirline.nvim", opts = require("user.configs.heirline").opts },
  { "subnut/nvim-ghost.nvim", lazy = false },
  { "tpope/vim-fugitive", lazy = false },
  { "uga-rosa/ccc.nvim", cmd = "CccPick" },
  { "yutkat/confirm-quit.nvim", event = "CmdlineEnter", config = true },
  { "ThePrimeagen/harpoon", lazy = false, dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-lua/plenary.nvim", dependencies = { "nvim-pack/nvim-spectre" } },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function() require("telescope").load_extension "file_browser" end,
    lazy = false,
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function() require("nvim-surround").setup() end,
  },

  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTelescope", "TodoLocList", "TodoQuickFix" },
    event = "BufRead",
    config = function() require("todo-comments").setup() end,
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "AckslD/nvim-neoclip.lua",
    config = require("user.configs.neoclip").config,
    event = "BufRead",
    dependencies = { "nvim-telescope/telescope.nvim", "kkharji/sqlite.lua" },
  },

  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", enabled = vim.fn.executable "make" == 1, build = "make" },
    },
    config = require "plugins.configs.telescope",
    opts = require("user.configs.telescope").opts,
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = require("user.configs.flash").opts,
    keys = require("user.configs.flash").keys,
  },
}
