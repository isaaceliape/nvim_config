-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animation_length = 0

-- copy to system clipboard
vim.opt.clipboard = "unnamedplus"

-- vim.keymap.del("n", "<leader>d")

-- set keymaps to navigate between buffers
-- vim.keymap.set("n", "<leader>n", ":bnext<cr>", { desc = "Go to next buffer" })
-- vim.keymap.set("n", "<leader>t", ":bprev<cr>", { desc = "Go to prev buffer" })
-- vim.keymap.set("n", "<leader>d", ":bdelete<cr>", { desc = "Delete current buffer" })
