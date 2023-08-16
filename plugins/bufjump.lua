return {
  "kwkarlwang/bufjump.nvim",
  config = function()
    require("bufjump").setup {
      forward = "gi",
      backward = "go",
    }
  end,
  event = "BufReadPost",
}
