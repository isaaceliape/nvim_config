return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = { preview = "main" },
      win = {
        list = {
          keys = {
            ["<esc>"] = false,
          },
        },
      },
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          layout = { preview = "main" },
          win = {
            list = {
              keys = {
                ["<esc>"] = false,
              },
            },
          },
        },
        files = {
          hidden = true,
        },
      },
    },
  },
}