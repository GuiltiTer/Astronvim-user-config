return {
  "kiyoon/jupynium.nvim",
  build = "pip install --user .",

  ft = { "python" },
  config = function()
    require("jupynium").setup {
      python_host = "python",
      default_notebook_URL = "localhost:8888/nbclassic",
      jupyter_command = "jupyter",

      notebook_dir = nil,
      firefox_profiles_ini_path = nil,
      firefox_profile_name = nil,
      auto_start_server = {
        enable = false,
        file_pattern = { "*.ju.*" },
      },
      auto_attach_to_server = {
        enable = true,
        file_pattern = { "*.ju.*", "*.md" },
      },
      auto_start_sync = {
        enable = false,
        file_pattern = { "*.ju.*", "*.md" },
      },
      auto_download_ipynb = false,
      auto_close_tab = true,
      autoscroll = {
        enable = true,
        mode = "always",
        cell = { top_margin_percent = 20 },
      },

      scroll = {
        page = { step = 0.5 },
        cell = { top_margin_percent = 20 },
      },
      jupynium_file_pattern = { "*.ju.*" },
      use_default_keybindings = false,
      textobjects = { use_default_keybindings = false },

      syntax_highlight = { enable = true },
      shortsighted = false,
      kernel_hover = {
        floating_win_opts = {
          max_width = 84,
          border = "none",
        },
      },
    }

    vim.api.nvim_create_autocmd("BufEnter", {
      desc = "Jupynium local buffer keymap",

      pattern = { "*.ju.*" },
      group = vim.api.nvim_create_augroup("jupynium_keymap", { clear = true }),
      callback = function()
        require("which-key").register({
          [";"] = {
            name = "Run",
            r = { "<cmd>JupyniumExecuteSelectedCells<cr>", "Jupynium run cell", mode = { "n", "v" } },
            a = { "<cmd>JupyniumStartAndAttachToServer<cr>", "Jupynium start & attach" },
            s = { "<cmd>JupyniumStartSync<cr>", "Jupynium start sync" },
            S = { "<cmd>JupyniumStopSync<cr>", "Jupynium stop sync" },
            c = { "i# %%<Enter><Esc>", "Add cell" },
            k = {
              name = "Kernel",
              r = { "<cmd>JupyniumKernelRestart<cr>", "Restart" },
              i = { "<cmd>JupyniumKernelInterrupt<cr>", "Interrupt" },
            },
          },
        }, {
          buffer = 0,
          prefix = "<leader>",
        })
      end,
    })

    vim.cmd [[
      hi! link JupyniumCodeCellSeparator CursorLine
      hi! link JupyniumMarkdownCellSeparator CursorLine
      hi! link JupyniumMarkdownCellContent CursorLine
      hi! link JupyniumMagicCommand Keyword
    ]]
  end,
}
