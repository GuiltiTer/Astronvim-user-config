return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.utility.noice-nvim" },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
}
