local surround = {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  config = function() require("nvim-surround").setup() end
}

local auto_save = {
  "okuuva/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" },
  opts = require("user.configs.auto-save").opts
}

local todo_comments = {
  "folke/todo-comments.nvim",
  cmd = { "TodoTelescope", "TodoLocList", "TodoQuickFix" },
  event = "BufRead",
  config = function() require("todo-comments").setup() end,
  dependencies = { "nvim-lua/plenary.nvim" },
}

local neoclip = {
  "AckslD/nvim-neoclip.lua",
  config = require("user.configs.neoclip").config,
  event = "BufRead",
  dependencies = { 'nvim-telescope/telescope.nvim', 'kkharji/sqlite.lua', },
}

local telescope = {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", enabled = vim.fn.executable "make" == 1, build = "make" } },
  config = require("plugins.configs.telescope"),
  opts = require("user.configs.telescope").opts
}

local flash = {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = require("user.configs.flash").opts,
  keys = require("user.configs.flash").keys,
}

local alpha = { "goolord/alpha-nvim", opts = require("user.configs.alpha").opts }
local twilight = { "folke/twilight.nvim", cmd = "Twilight" }
local cccpick = { "uga-rosa/ccc.nvim", cmd = "CccPick" }
local ranger = { "kelly-lin/ranger.nvim", config = require("user.configs.ranger").config, lazy = false }
local neotree = { "nvim-neo-tree/neo-tree.nvim", opts = require("user.configs.neo-tree").opts }
local notify = { "rcarriga/nvim-notify", config = require("user.configs.notify").config, lazy = false }
local neoscroll = { "karb94/neoscroll.nvim", config = require("user.configs.neoscroll").config, lazy = false }
local hairline = { "rebelot/heirline.nvim", opts = require("user.configs.heirline").opts }
local dracula = { "dracula/vim", name = "dracula", priority = 1000, lazy = false }
local catppuccin = { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false }
local material = { "marko-cerovac/material.nvim", priority = 1000, lazy = false }
local oxocarbon = { "nyoom-engineering/oxocarbon.nvim", priority = 1000, lazy = false }
local harpoon = { "ThePrimeagen/harpoon", name = "harpoon", }
local undotree = { "mbbill/undotree", name = "undotree", cmd = "UndotreeToggle" }
local codeium = { "Exafunction/codeium.vim", event = "InsertEnter" }

return {
  alpha,
  dracula,
  catppuccin,
  material,
  oxocarbon,
  harpoon,
  undotree,
  codeium,
  flash,
  hairline,
  surround,
  notify,
  neoscroll,
  neotree,
  auto_save,
  todo_comments,
  ranger,
  neoclip,
  telescope,
  cccpick,
  twilight,
}
