-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap

map("n", "<leader>fl", ":Telescope live_grep<CR>", { desc = "Telescope live grep" })
map("n", "<leader>n", ":bnext<cr>", { desc = "Go to next buffer" })
map("n", "<leader>t", ":bprev<cr>", { desc = "Go to prev buffer" })
map("n", "<leader>h", ":bdelete | bprev<cr>", { noremap = true, silent = true, desc = "Delete current buffer" })
map("n", "<leader>N", "<C-w>w", { noremap = true, silent = true, desc = "Go to next window" })
map("n", "<leader>T", "<C-w>p", { noremap = true, silent = true, desc = "Go to prev window" })

-- Use the blackhole register for all delete operations
vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "D", '"_D', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "c", '"_c', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "C", '"_C', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "D", '"_D', { noremap = true, silent = true })

-- Add a custom keybinding to toggle the colorscheme
vim.api.nvim_set_keymap(
  "n",
  "<leader>tt",
  ":CyberdreamToggleMode<CR>",
  { noremap = true, silent = true, desc = "Toggle dark mode" }
)
