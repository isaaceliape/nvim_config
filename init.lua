-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animation_length = 0

-- copy to system clipboard
vim.opt.clipboard = "unnamedplus"

-- Keep the cursor in the middle of the screen
vim.opt.scrolloff = 999

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
