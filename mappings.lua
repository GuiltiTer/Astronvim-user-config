local cliapps = require "user.cliapps"

local mappings = {
  i = {
    -- codeium
    ["<S-Enter>"] = { "codeium#Accept()", silent = true, expr = true },
    ["<C-.>"] = {
      function() vim.api.nvim_call_function("codeium#CycleCompletions", { 1 }) end,
      silent = true,
      expr = true,
    },
    ["<C-,>"] = {
      function() vim.api.nvim_call_function("codeium#CycleCompletions", { -1 }) end,
      silent = true,
      expr = true,
    },
  },

  n = {
    -- Terminal Apps Description
    ["<leader>ta"] = { desc = "Terminal Apps" },

    -- harpoon
    ["<leader>m"] = { function() require("harpoon.mark").add_file() end, desc = "Mark" },
    ["<leader>b"] = { function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon" },
    ["]h"] = { function() require("harpoon.ui").nav_next() end, desc = "Next Harpoon" },
    ["[h"] = { function() require("harpoon.ui").nav_prev() end, desc = "Previous Harpoon" },

    -- undotree
    ["<leader>U"] = { "<cmd>UndotreeToggle<cr>", desc = "Undo Tree" },

    -- todo-comments
    ["<leader>fp"] = { "<cmd>TodoTelescope<cr>", desc = "Find TODO" },
    ["]p"] = { function() require("todo-comments.jump").next() end, desc = "Next TODO" },
    ["[p"] = { function() require("todo-comments.jump").prev() end, desc = "Previous TODO" },

    -- ranger
    ["<leader>o"] = { function() require("ranger-nvim").open(true) end, desc = "Ranger" },

    -- neoclip
    ["<leader>f'"] = { "<cmd>:Telescope neoclip<cr>", desc = "Find Clipboard" },

    -- cliapps
    ["<leader>tb"] = { cliapps.btop, desc = "btop" },
    ["<leader>tad"] = { cliapps.lazydocker, desc = "LazyDocker" },
  },
}

local unbinds = {
  n = {},
}

local insert_unbinds = function(mappings, unbinds)
  for mode, keys in pairs(unbinds) do
    for _, key in pairs(keys) do
      mappings[mode][key] = false
    end
  end
  return mappings
end

mappings = insert_unbinds(mappings, unbinds)

return mappings
