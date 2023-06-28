local hop_keys = require("user.configs.hop").keys

return {
  i = {
    -- codeium
    ["<S-Enter>"] = { "codeium#Accept()", silent = true, expr = true },
    ["<C-.>"] = { function() vim.api.nvim_call_function("codeium#CycleCompletions", { 1 }) end, silent = true, expr = true },
    ["<C-,>"] = { function() vim.api.nvim_call_function("codeium#CycleCompletions", { -1 }) end, silent = true, expr = true },
  },
  n = {
    -- basics
    ["<leader>w"] = { "<C-w>", desc = "Window" },

    -- harpoon
    ["<leader>m"] = { function() require("harpoon.mark").add_file() end, desc = "Mark" },
    ["<leader>h"] = { function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon" },
    ["]h"] = { function() require("harpoon.ui").nav_next() end, desc = "Next Harpoon" },
    ["[h"] = { function() require("harpoon.ui").nav_prev() end, desc = "Previous Harpoon" },

    -- undotree
    ["<leader>U"] = { "<cmd>UndotreeToggle<cr>", desc = "Undo Tree" },

    -- lspsaga
    ["gp"] = { "<cmd>Lspsaga peek_definition<cr>", desc = "Peek Definition" },

    -- hop
    ["f"] = { hop_keys.char_line_after, desc = "Find" },
    ["F"] = { hop_keys.char_line_before, desc = "Find Backward" },
    ["t"] = { hop_keys.char_line_after_till, desc = "Till" },
    ["T"] = { hop_keys.char_line_before_till, desc = "Till Backward" },

    -- move
    ["<C-j>"] = { function() require("move").MoveLine(1) end, desc = "Move Line Down" },
    ["<C-k>"] = { function() require("move").MoveLine(-1) end, desc = "Move Line Up" },

    -- todo-comments
    ["<leader>fp"] = { "<cmd>TodoTelescope<cr>", desc = "Find TODO" },
    ["]p"] = { require("todo-comments.jump").next, desc = "Next TODO" },
    ["[p"] = { require("todo-comments.jump").prev, desc = "Previous TODO" },
  },
  v = {
    -- move
    ["<C-j>"] = { ":'<,'>MoveBlock(1)<cr>", desc = "Move Block Down" },
    ["<C-k>"] = { ":'<,'>MoveBlock(-1)<cr>", desc = "Move Block Up" },

    -- hop
    ["f"] = { hop_keys.char_line_after, desc = "Find" },
    ["F"] = { hop_keys.char_line_before, desc = "Find Backward" },
    ["t"] = { hop_keys.char_line_after_till, desc = "Till" },
    ["T"] = { hop_keys.char_line_before_till, desc = "Till Backward" },
  }
}
