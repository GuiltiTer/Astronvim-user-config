local config = function()
  require("lspsaga").setup {
    ui = {
      border = "rounded",
    },
    symbol_in_winbar = { enable = false },
    definition = {
      keys = {
        edit = "e",
        vsplit = "v",
        split = "s",
      },
    },
    finder = {
      layout = "float",
      default = "def+ref+imp",
      keys = {
        vsplit = "v",
        split = "s",
      },
    },
  }
end

return {
  "nvimdev/lspsaga.nvim",
  config = config,
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
  lazy = false,
}
