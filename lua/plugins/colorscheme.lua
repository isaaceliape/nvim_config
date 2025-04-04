return {
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
}
