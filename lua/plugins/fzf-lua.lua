return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local fzf = require("fzf-lua")
      
      fzf.setup({
        -- Your fzf-lua config here
        defaults = {
          formatter = "path.dirname_first",
        },
        winopts = {
          height = 0.85,
          width = 0.80,
          preview = {
            default = "builtin",
            layout = "vertical",
            vertical = "down:45%",
          },
        },
      })

      -- Optional: Add some useful keymaps
      vim.keymap.set("n", "<leader>ff", fzf.files, { noremap = true, silent = true, desc = "Find files" })
      vim.keymap.set("n", "<leader>fg", fzf.live_grep, { noremap = true, silent = true, desc = "Live grep" })
      vim.keymap.set("n", "<leader>fb", fzf.buffers, { noremap = true, silent = true, desc = "Find buffers" })
      vim.keymap.set("n", "<leader>fh", fzf.help_tags, { noremap = true, silent = true, desc = "Help tags" })
    end,
  },
}
