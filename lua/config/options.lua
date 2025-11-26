-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Exclude linebreak from $ selection in visual mode
vim.opt.selection = "exclusive"

-- Override pink/magenta color in Vim theme to be less vibrant
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "vim",
  callback = function()
    -- Override highlight groups that use pink/magenta with a muted mauve
    vim.api.nvim_set_hl(0, "Function", { fg = "#a68aaa" })
    vim.api.nvim_set_hl(0, "Statement", { fg = "#a68aaa" })
    vim.api.nvim_set_hl(0, "Type", { fg = "#a68aaa" })
  end,
})

