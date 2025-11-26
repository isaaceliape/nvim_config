-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.defer_fn(function()
      if vim.bo.buftype ~= "" then
        vim.cmd("wincmd p")
      end
    end, 10)
  end,
})

-- Set .txt files to use Ruby syntax highlighting
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.txt",
  callback = function()
    vim.bo.filetype = "ruby"
  end,
})

-- Override pink/magenta color in Vim theme to be less vibrant
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "vim",
  callback = function()
    -- Override highlight groups that use pink/magenta with a muted mauve
    vim.api.nvim_set_hl(0, "Magenta", { fg = "#a68aaa" })
    vim.api.nvim_set_hl(0, "Function", { fg = "#a68aaa" })
    vim.api.nvim_set_hl(0, "Statement", { fg = "#a68aaa" })
  end,
})
