return {
  "Wansmer/treesj",
  keys = { "gJ", "gK" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("treesj").setup {
      use_default_keymaps = false,
      notify = false,
    }
  end,
}
