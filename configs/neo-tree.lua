local mappings = {}

return {
  opts = function(_, opts)
    opts.sources = { "filesystem", "git_status" }
    -- local close_on_open_handler = { event = "file_opened", handler = function(_) vim.fn.execute "Neotree close" end }
    -- table.insert(opts.event_handlers, close_on_open_handler)
    opts.window.mappings = vim.tbl_extend("force", opts.window.mappings, mappings)
    return opts
  end,
}
