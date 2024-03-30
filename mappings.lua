local mappings = {
  t = {},

  i = {},

  x = {
    -- refactoring
    ["<leader>R"] = { function() require("telescope").extensions.refactoring.refactors() end, desc = "Refactor menu" },
  },

  n = {
    -- basics
    ["<leader>w"] = { "<cmd>wa<cr>", desc = "Save" },
    ["<tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<C-y>"] = { '"qy', desc = "Yank to register q" },
    ["<C-p>"] = { '"qp', desc = "Pase to register q" },
    ["Q"] = { "<cmd>q<cr>", desc = "Quit" },
    ["<leader>le"] = { "<cmd>LspRestart<cr>", desc = "Restart LSP" },

    -- bufjump
    ["go"] = { function() require("bufjump").backward() end, desc = "Go out" },
    ["gi"] = { function() require("bufjump").forward() end, desc = "Go in" },

    -- undotree
    ["<leader>U"] = { "<cmd>UndotreeToggle<cr>", desc = "Undo Tree" },

    -- todo-comments
    ["<leader>fp"] = { "<cmd>TodoTelescope<cr>", desc = "Find TODO" },
    ["]p"] = { function() require("todo-comments.jump").next() end, desc = "Next TODO" },
    ["[p"] = { function() require("todo-comments.jump").prev() end, desc = "Previous TODO" },

    -- File Manager
    ["<leader>o"] = { function() require("tfm").open() end, desc = "File Manager" },

    -- cliapps
    ["<leader>tb"] = { function() require("user.cliapps").btop() end, desc = "ToggleTerm btop" },
    ["<leader>td"] = { function() require("user.cliapps").lazydocker() end, desc = "ToggleTerm LazyDocker" },
    ["<leader>tv"] = { "<cmd>10ToggleTerm size=64 direction=vertical<cr>", desc = "ToggleTerm vertical" },
    ["<leader>th"] = { "<cmd>11ToggleTerm size=16 direction=horizontal<cr>", desc = "ToggleTerm horizontal" },
    ["<leader>tf"] = { "<cmd>12ToggleTerm direction=float<cr>", desc = "ToggleTerm float" },
    ["<leader>tt"] = { "<cmd>13ToggleTerm direction=tab<cr>", desc = "ToggleTerm float" },

    -- searchbox
    ["<leader>r"] = { "<cmd>SearchBoxReplace confirm=menu<cr>", desc = "SearchBox" },

    -- lspsaga
    ["gp"] = { "<cmd>Lspsaga peek_definition<cr>", desc = "Peek Definition" },
    ["<leader>lS"] = { "<cmd>Lspsaga outline<cr>", desc = "Symbols outline" },
    ["<leader>lk"] = { "<cmd>Lspsaga finder<cr>", desc = "References" },

    -- telescope
    ["<leader>h"] = { function() require("user.telescope").buffers() end, desc = "Buffers" },
    ["?"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "search" },
    ["<leader>?"] = { function() require("telescope.builtin").commands() end, desc = "Find commands" },

    -- refactoring
    ["<leader>R"] = { function() require("telescope").extensions.refactoring.refactors() end, desc = "Refactor Menu" },

    -- zen mode
    ["<leader>uz"] = { function() require("zen-mode").toggle() end, desc = "Toggle zen mode" },

    -- neogit
    ["<leader>gn"] = { function() require("neogit").open() end, desc = "Neogit" },

    -- diffview
    ["<leader>gd"] = { "<cmd>DiffviewOpen<cr>", desc = "diff" },
    ["<leader>gHb"] = { "<cmd>DiffviewFileHistory<cr>", desc = "diff branch history" },
    ["<leader>gHf"] = { "<cmd>DiffviewFileHistory %<cr>", desc = "diff file history" },

    -- treesj
    ["gJ"] = { function() require("treesj").join() end, desc = "Join lines" },
    ["gK"] = { function() require("treesj").split() end, desc = "Split lines" },
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
