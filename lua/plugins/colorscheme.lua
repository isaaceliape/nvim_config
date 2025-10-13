return {
  -- add tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  -- Configure LazyVim to load tokyonight-moon
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
}
