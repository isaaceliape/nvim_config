-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("telescope").setup({
  defaults = {
    layout_strategy = "vertical",
    layout_config = {
      vertical = {
        mirror = true, -- This will position the preview at the bottom
        height = 0.90, -- Adjust the height as needed
      },
    },
  },
})
vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animation_length = 0

-- copy to system clipboard
vim.opt.clipboard = "unnamedplus"

-- scrolloff "jump by half screen when navigating using ctrl+d and ctrl+u"
vim.o.scrolloff = 999

local function set_theme_based_on_system()
  local theme

  -- Check the operating system
  if vim.fn.has("unix") == 1 then
    theme = os.getenv("GTK_THEME") or "default"
  else
    theme = "default"
  end

  -- Set the colorscheme based on the detected theme
  if theme:match("dark") then
    vim.cmd([[cyberdream]]) -- Dark theme
  else
    vim.cmd([["cyberdream-light"]]) -- Light theme
  end
end

set_theme_based_on_system()
