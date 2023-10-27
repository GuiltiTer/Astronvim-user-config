local config = function()
  require("lspsaga").setup {
    symbol_in_winbar = { enable = false },
    definition = {
      keys = {
        edit = "e",
        vsplit = "v",
        split = "s",
      },
    },
    finder = {
      max_height = 1,
      left_width = 0.3,
      right_width = 0.5,
      layout = "normal",
      default = "ref+imp+def",
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
