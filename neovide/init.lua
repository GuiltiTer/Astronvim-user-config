require "user.neovide.mappings"

Neovide_default_font_size = 12
Neovide_font_size_adjust_step = 2
vim.o.guifont = "JetBrains Mono:h" .. Neovide_default_font_size
vim.o.termguicolors = true
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_theme = "auto"
vim.g.neovide_refresh_rate = 100
