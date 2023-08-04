local actions = require "telescope.actions"

local buffer_picker = function()
  require("telescope.builtin").buffers {
    initial_mode = "normal",
    sort_lastused = true,
    ignore_current_buffer = true,
    sort_mru = true,
    attach_mappings = function(prompt_bufnr, map)
      local delete_buf = function() actions.delete_buffer(prompt_bufnr) end
      map("n", "<bs>", delete_buf)
      return true
    end,
  }
end

return {
  buffers = buffer_picker,
}
