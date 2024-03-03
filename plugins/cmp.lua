local cmp = require "cmp"

local apply_cmdline = function()
  cmp.setup.cmdline("/", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = "buffer" },
    },
  })

  cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = "path" },
    }, {
      {
        name = "cmdline",
        option = {
          ignore_cmds = { "Man", "!" },
        },
      },
    }),
  })
end

return {
  "hrsh7th/nvim-cmp",
  keys = { ":", "/" },
  config = function(_, opts)
    cmp.setup(opts)
    apply_cmdline()
  end,

  dependencies = { "hrsh7th/cmp-cmdline" },
}
