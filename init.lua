-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animation_length = 0

vim.cmd("highlight Normal guibg=#000000") -- set background to black
vim.cmd("highlight LineNr guifg=#FFA500 guibg=NONE") -- Orange text, no background
