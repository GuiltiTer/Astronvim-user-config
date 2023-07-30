return {
  config = function()
    require("lspsaga").setup {
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
          shuttle = "e",
          vsplit = "v",
          split = "s",
        },
      },
    }
  end,
}
