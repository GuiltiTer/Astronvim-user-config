return {
  config = function()
    require('neoclip').setup(
      {
        enable_persistent_history = true,
        on_select = {
          move_to_front = true,
          close_telescope = true,
        },
        on_paste = {
          move_to_front = true,
          close_telescope = true,
        },
        keys = {
          telescope = {
            i = {
              paste_behind = '<c-\'>',
            },
          },
        },
      })
    require('telescope').load_extension('neoclip')
  end,
}
