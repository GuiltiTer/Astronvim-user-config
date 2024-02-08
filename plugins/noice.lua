return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.utility.noice-nvim" },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {

      lsp = {
        progress = {
          enabled = false, --disable bottom right progress bar
        },
      },

      presets = {
        lsp_doc_border = true,
      },

      routes = {
        {
          -- prevent notification burst
          filter = {
            event = "msg_show",
          },
          opts = { skip = false },
        },
      },
    },
  },
}
