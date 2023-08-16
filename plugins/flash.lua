local opts = {
  modes = {
    search = { enabled = false },
    char = {
      enabled = true,
      -- dynamic configuration for ftFT motions
      config = function(opts)
        -- autohide flash when in operator-pending mode
        opts.autohide = vim.fn.mode(true):find "no" and vim.v.operator == "y"

        -- disable jump labels when enabled and when using a count
        opts.jump_labels = opts.jump_labels and vim.v.count == 0

        -- Show jump labels only in operator-pending mode
        -- opts.jump_labels = vim.v.count == 0 and vim.fn.mode(true):find("o")
      end,
      -- hide after jump when not using jump labels
      autohide = false,
      -- show jump labels
      jump_labels = true,
      -- set to `false` to use the current line only
      multi_line = true,
      -- When using jump labels, don't use these keys
      -- This allows using those keys directly after the motion
      label = { exclude = "hjkliardc" },
      -- by default all keymaps are enabled, but you can disable some of them,
      -- by removing them from the list.
      -- If you rather use another key, you can map them
      -- to something else, e.g., { [";"] = "L", [","] = H }
      keys = { "f", "F", "t", "T", ";", "," },
      ---@alias Flash.CharActions table<string, "next" | "prev" | "right" | "left">
      -- The direction for `prev` and `next` is determined by the motion.
      -- `left` and `right` are always left and right.
      char_actions = function(motion)
        return {
          [";"] = "next", -- set to `right` to always go right
          [","] = "prev", -- set to `left` to always go left
          -- clever-f style
          [motion:lower()] = "next",
          [motion:upper()] = "prev",
          -- jump2d style: same case goes next, opposite case goes prev
          -- [motion] = "next",
          -- [motion:match("%l") and motion:upper() or motion:lower()] = "prev",
        }
      end,
      search = { wrap = false },
      highlight = { backdrop = true },
      jump = { register = false },
    },
  },
  -- options for the floating window that shows the prompt,
  -- for regular jumps
  prompt = {
    enabled = true,
    prefix = { { "⚡", "FlashPromptIcon" } },
    win_config = {
      relative = "editor",
      width = 1, -- when <=1 it's a percentage of the editor width
      height = 1,
      row = -1, -- when negative it's an offset from the bottom
      col = 0, -- when negative it's an offset from the right
      zindex = 1000,
    },
  },
  -- options for remote operator pending mode
  remote_op = {
    -- restore window views and cursor position
    -- after doing a remote operation
    restore = false,
    -- For `jump.pos = "range"`, this setting is ignored.
    -- `true`: always enter a new motion when doing a remote operation
    -- `false`: use the window's cursor position and jump target
    -- `nil`: act as `true` for remote windows, `false` for the current window
    motion = false,
  },
}

local keys = {
  {
    "<leader>s",
    mode = { "n", "x", "o" },
    function() require("flash").jump() end,
    desc = "Flash",
  },
  {
    "<leader>S",
    mode = { "n", "o", "x" },
    function() require("flash").treesitter() end,
    desc = "Flash Treesitter",
  },
  {
    "r",
    mode = "o",
    function() require("flash").remote() end,
    desc = "Remote Flash",
  },
  {
    "R",
    mode = { "o", "x" },
    function() require("flash").treesitter_search() end,
    desc = "Flash Treesitter Search",
  },
  {
    "<c-s>",
    mode = { "c" },
    function() require("flash").toggle() end,
    desc = "Toggle Flash Search",
  },
}

return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = opts,
  keys = keys,
}
