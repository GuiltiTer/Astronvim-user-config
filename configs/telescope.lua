local flash_jump = function(prompt_bufnr)
  require("flash").jump({
    pattern = "^",
    label = { after = { 0, 0 } },
    search = {
      mode = "pattern",
      exclude = { function(win) return vim.bo[vim.api.nvim_win_get_buf(win)].filetype ~= "TelescopeResults" end, },
    },
    action = function(match)
      local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
      picker:set_selection(match.pos[1] - 1)
    end,
  })
end

return {
  opts = function(_, opts)
    opts.defaults.initial_mode = "normal"
    opts.defaults.mappings.n["/"] = flash_jump
    return opts
  end,
}