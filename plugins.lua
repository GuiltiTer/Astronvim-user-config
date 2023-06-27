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

local hairline = { "rebelot/heirline.nvim", opts = require("user.configs.heirline").opts }
local hop = { "phaazon/hop.nvim", branch = "v2", config = require("user.configs.hop").config, lazy = false }
local dracula = { "dracula/vim", name = "dracula", priority = 1000, lazy = false }
local catppuccin = { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false }
local harpoon = { "ThePrimeagen/harpoon", name = "harpoon", }
local undotree = { "mbbill/undotree", name = "undotree", lazy = false }
local copilot = { "github/copilot.vim", name = "Copilot", cmd = "Copilot" }
local move = { "fedepujol/move.nvim", name = "move", lazy = false }

-- local jukit = { "luk400/vim-jukit", name = "jukit" }

return { dracula, catppuccin, harpoon, undotree, copilot, lspsaga, hop, move, hairline, surround }