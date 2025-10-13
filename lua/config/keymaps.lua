-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Use LazyVim's keymap utility for better integration
local Util = require("lazyvim.util")

-- Buffer navigation
vim.keymap.set("n", "<leader>n", ":bnext<cr>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>t", ":bprev<cr>", { desc = "Go to prev buffer" })
vim.keymap.set("n", "<leader>h", ":bdelete | bprev<cr>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>N", "<C-w>w", { desc = "Go to next window" })
vim.keymap.set("n", "<leader>T", "<C-w>p", { desc = "Go to prev window" })

-- Use the blackhole register for all delete operations
vim.keymap.set("n", "d", '"_d', { desc = "Delete to blackhole register" })
vim.keymap.set("n", "D", '"_D', { desc = "Delete line to blackhole register" })
vim.keymap.set("n", "c", '"_c', { desc = "Change to blackhole register" })
vim.keymap.set("n", "C", '"_C', { desc = "Change line to blackhole register" })
vim.keymap.set("v", "d", '"_d', { desc = "Delete selection to blackhole register" })
vim.keymap.set("v", "D", '"_D', { desc = "Delete selection to blackhole register" })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Use LazyVim's keymap utility for better integration
local Util = require("lazyvim.util")

-- Buffer navigation
vim.keymap.set("n", "<leader>n", ":bnext<cr>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>t", ":bprev<cr>", { desc = "Go to prev buffer" })
vim.keymap.set("n", "<leader>h", ":bdelete | bprev<cr>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>N", "<C-w>w", { desc = "Go to next window" })
vim.keymap.set("n", "<leader>T", "<C-w>p", { desc = "Go to prev window" })

-- Use the blackhole register for all delete operations
vim.keymap.set("n", "d", '"_d', { desc = "Delete to blackhole register" })
vim.keymap.set("n", "D", '"_D', { desc = "Delete line to blackhole register" })
vim.keymap.set("n", "c", '"_c', { desc = "Change to blackhole register" })
vim.keymap.set("n", "C", '"_C', { desc = "Change line to blackhole register" })
vim.keymap.set("v", "d", '"_d', { desc = "Delete selection to blackhole register" })
vim.keymap.set("v", "D", '"_D', { desc = "Delete selection to blackhole register" })

-- Add a custom keybinding to toggle the colorscheme
vim.keymap.set("n", "<leader>tt", ":CyberdreamToggleMode<CR>", { desc = "Toggle dark mode" })

-- Remap <leader><leader> to find files in git root (like <leader>fF), excluding Configuration folder
vim.keymap.set("n", "<leader><leader>", function() Snacks.picker.files({ cwd = require("lazyvim.util").root.git(), fd_opts = { "--exclude", "Configuration" } }) end, { desc = "Find Files (git root)" })

-- Keymap to reload Neovim config
vim.keymap.set("n", "<leader>sv", ":source $MYVIMRC<CR>", { desc = "Reload config" })

-- Move current line up/down
vim.keymap.set("n", "<M-up>", ":m .-2<CR>==", { desc = "Move line up", silent = true })
vim.keymap.set("n", "<M-down>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
vim.keymap.set("v", "<M-up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })
vim.keymap.set("v", "<M-down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })
