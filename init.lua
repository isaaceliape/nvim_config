-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animation_length = 0

-- copy to system clipboard
vim.opt.clipboard = "unnamedplus"

-- scrolloff "jump by half screen when navigating using ctrl+d and ctrl+u"
vim.o.scrolloff = 999
