local lspsaga = {
  "glepnir/lspsaga.nvim",
  event = "LspAttach",
  config = require("user.configs.lspsaga").config,
  dependencies = { { "nvim-tree/nvim-web-devicons" }, { "nvim-treesitter/nvim-treesitter" } }
}

local surround = {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  config = function() require("nvim-surround").setup({}) end
}

local auto_save = {
  "okuuva/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" },
  opts = require("user.configs.auto-save").opts
}

local todo_comments = {
  "folke/todo-comments.nvim",
  lazy = false,
  config = function() require("todo-comments").setup() end,
  dependencies = { "nvim-lua/plenary.nvim" },
}

local neoclip = {
  "AckslD/nvim-neoclip.lua",
  config = require("user.configs.neoclip").config,
  lazy = false,
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

local ranger = { "kelly-lin/ranger.nvim", config = require("user.configs.ranger").config, lazy = false }
local neotree = { "nvim-neo-tree/neo-tree.nvim", opts = require("user.configs.neo-tree").opts }
local notify = { "rcarriga/nvim-notify", config = require("user.configs.notify").config, lazy = false }
local neoscroll = { "karb94/neoscroll.nvim", config = require("user.configs.neoscroll").config, lazy = false }
local hairline = { "rebelot/heirline.nvim", opts = require("user.configs.heirline").opts }
local hop = { "phaazon/hop.nvim", branch = "v2", config = require("user.configs.hop").config, lazy = false }
local dracula = { "dracula/vim", name = "dracula", priority = 1000, lazy = false }
local catppuccin = { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false }
local harpoon = { "ThePrimeagen/harpoon", name = "harpoon", }
local undotree = { "mbbill/undotree", name = "undotree", lazy = false }
local codeium = { "Exafunction/codeium.vim", event = "InsertEnter" }
local move = { "fedepujol/move.nvim", name = "move", lazy = false }

-- local copilot = { "github/copilot.vim", name = "Copilot", cmd = "Copilot", event = "InsertEnter" }
-- local jukit = { "luk400/vim-jukit", name = "jukit" }

return {
  dracula,
  catppuccin,
  harpoon,
  undotree,
  codeium,
  lspsaga,
  hop,
  move,
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
  -- neotest,
}
