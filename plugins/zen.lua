return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  {
    "folke/zen-mode.nvim",
    opts = {
      plugins = {
        kitty = {
          enabled = true,
          font = "+4",
        },
      },
    },
  },
}
