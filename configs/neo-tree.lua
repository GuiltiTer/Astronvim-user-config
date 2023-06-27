return {
  opt = function(_, opts)
    local close_on_open_handler = { event = "file_opened", handler = function(_) require("neo-tree").close_all() end }
    table.insert(opts.event_handlers, close_on_open_handler)
    return opts
  end
}
