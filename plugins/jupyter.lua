local quarto = {
  "quarto-dev/quarto-nvim",
  ft = { "quarto" },

  opts = {
    codeRunner = {
      enabled = true,
      default_method = "molten",
      ft_runners = { python = "molten" },
      never_run = { "yaml" },
    },
  },
  dependencies = {
    "jmbuhr/otter.nvim",
    "hrsh7th/nvim-cmp",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
}

local molten = {
  "benlubas/molten-nvim",

  version = "^1.0.0",
  ft = { "quarto", "python" },

  build = ":UpdateRemotePlugins",
  init = function()
    -- this is an example, not a default. Please see the readme for more configuration options
    vim.g.molten_output_win_max_height = 80
  end,
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      desc = "Molten local buffer keymap",

      pattern = { "python", "quarto" },
      group = vim.api.nvim_create_augroup("moten_keymap", { clear = true }),
      callback = function()
        vim.keymap.set("n", "m", " ", { buffer = true, desc = "Molten" })
        vim.keymap.set("n", "mi", "<cmd>MoltenInit<cr>", { buffer = true, desc = "Molten init" })
        vim.keymap.set("n", "md", "<cmd>MoltenRestart<cr>", { buffer = true, desc = "Molten restart" })
        vim.keymap.set("n", "ml", "<cmd>MoltenEvaluateLine<cr>", { buffer = true, desc = "Molten run" })
        vim.keymap.set("n", "mr", "<cmd>MoltenReevaluateCell<cr>", { buffer = true, desc = "Molten rerun" })
        vim.keymap.set("n", "mm", "<cmd>MoltenEvaluateOperator<cr>", { buffer = true, desc = "Molten run..." })

        vim.keymap.set("v", "me", "<cmd>MoltenEvaluateVisual<cr><esc>", { buffer = true, desc = "Molten run" })
      end,
    })
  end,
}

return { quarto, molten }
