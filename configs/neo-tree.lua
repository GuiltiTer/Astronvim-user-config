return {
  opts = function(_, opts)
    local close_on_open_handler = { event = "file_opened", handler = function(_) vim.fn.execute "Neotree close" end }
    table.insert(opts.event_handlers, close_on_open_handler)
    return opts
  end,
}
