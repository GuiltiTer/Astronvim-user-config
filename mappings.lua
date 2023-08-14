local cliapps = require "user.cliapps"
local mappings = {
  t = {},

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
    -- basics
    ["<leader><Enter>"] = { "<C-w>o", desc = "Maximize Window" },
    ["<tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<leader>x"] = { "<C-w>c", desc = "Close Window" },
    ["<C-y>"] = { '"qy', desc = "Yank to register q" },
    ["<C-p>"] = { '"qp', desc = "Pase to register q" },

    -- undotree
    ["<leader>U"] = { "<cmd>UndotreeToggle<cr>", desc = "Undo Tree" },
    ["<leader>fu"] = { "<cmd>Telescope undo<cr>", desc = "Find Undo Tree" },

    -- todo-comments
    ["<leader>fp"] = { "<cmd>TodoTelescope<cr>", desc = "Find TODO" },
    ["]p"] = { function() require("todo-comments.jump").next() end, desc = "Next TODO" },
    ["[p"] = { function() require("todo-comments.jump").prev() end, desc = "Previous TODO" },

    -- ranger
    ["<leader>o"] = { function() require("ranger-nvim").open(true) end, desc = "Ranger" },

    -- neoclip
    ["<leader>f'"] = { "<cmd>:Telescope neoclip<cr>", desc = "Find Clipboard" },

    -- cliapps
    ["<leader>tb"] = { cliapps.btop, desc = "ToggleTerm btop" },
    ["<leader>td"] = { cliapps.lazydocker, desc = "ToggleTerm LazyDocker" },
    ["<leader>tv"] = { "<cmd>10ToggleTerm size=64 direction=vertical<cr>", desc = "ToggleTerm vertical" },
    ["<leader>th"] = { "<cmd>11ToggleTerm size=16 direction=horizontal<cr>", desc = "ToggleTerm horizontal" },
    ["<leader>tf"] = { "<cmd>12ToggleTerm direction=float<cr>", desc = "ToggleTerm float" },
    ["<leader>tt"] = { "<cmd>13ToggleTerm direction=tab<cr>", desc = "ToggleTerm float" },

    -- filebrowser
    ["<leader>fB"] = { "<cmd>Telescope file_browser<cr>", desc = "File Browser" },

    -- harpoon
    ["<leader>h"] = { desc = "Harpoon" },
    ["<leader>hm"] = { function() require("harpoon.mark").add_file() end, desc = "Mark file" },
    ["<leader>hh"] = { function() require("harpoon.ui").toggle_quick_menu() end, desc = "Menu" },
    ["<leader>{h"] = { function() require("harpoon.ui").nav_prev() end, desc = "Previous mark" },
    ["<leader>}h"] = { function() require("harpoon.ui").nav_next() end, desc = "Next mark" },

    -- spectre
    ["<leader>r"] = { function() require("spectre").toggle() end, desc = "Spectre" },

    -- lspsaga
    ["gp"] = { "<cmd>Lspsaga peek_definition<cr>", desc = "Peek Definition" },
    ["<leader>lS"] = { "<cmd>Lspsaga outline<cr>", desc = "Symbols outline" },
    ["<cr>"] = { "<cmd>Lspsaga finder<cr>", desc = "References" },

    -- telescope
    ["<leader><space>"] = { function() require("user.telescope").buffers() end, desc = "Buffers" },
    ["?"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "search" },
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
