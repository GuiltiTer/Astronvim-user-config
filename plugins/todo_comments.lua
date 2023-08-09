return {
  "folke/todo-comments.nvim",
  cmd = { "TodoTelescope", "TodoLocList", "TodoQuickFix" },
  event = "BufRead",
  config = function() require("todo-comments").setup() end,
  dependencies = { "nvim-lua/plenary.nvim" },
}
