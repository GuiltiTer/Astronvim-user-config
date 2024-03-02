local cmp = require "cmp"

local dependencies = {
  "hrsh7th/cmp-cmdline",
  {
    "Exafunction/codeium.nvim",
    cmd = "Codeium",
    build = ":Codeium Auth",
  },
}

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
  dependencies = dependencies,

  config = function(_, opts)
    cmp.setup(opts)
    apply_cmdline()
  end,

  opts = {
    sources = {
      {
        name = "codeium",
        group_index = 1,
        priority = 100,
      },
    },
  },
}
