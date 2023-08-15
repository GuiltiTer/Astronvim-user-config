return {
  "ThePrimeagen/refactoring.nvim",
  requires = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-treesitter/nvim-treesitter" },
  },
  event = "BufReadPost",
  config = function() require("refactoring").setup {} end,
}
