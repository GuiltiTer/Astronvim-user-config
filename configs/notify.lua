return {
  config = function()
    local notify = require("notify")
    notify.setup({
      render = "compact",
      stages = "fade",
      timeout = 3000,
      fps = 60
    })
    vim.notify = notify
  end,
}
