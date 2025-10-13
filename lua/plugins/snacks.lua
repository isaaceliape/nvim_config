return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = { preview = "main" },
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          layout = { preview = true },
        },
        files = {
          hidden = true,
        },
      },
    },
  },
}