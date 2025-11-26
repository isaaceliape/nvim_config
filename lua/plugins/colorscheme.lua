return {
  -- Add Catppuccin plugin with system theme detection
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      local function get_system_theme()
        local appearance = vim.fn.system("defaults read -g AppleInterfaceStyle 2>/dev/null")
        return appearance:match("Dark") ~= nil
      end

      local function update_theme()
         -- Detect system theme
         local is_dark = get_system_theme()
         local flavor = is_dark and "mocha" or "latte"
         
         -- Clear the cached module and reload
         package.loaded["catppuccin"] = nil
         package.loaded["catppuccin.palettes"] = nil
         package.loaded["catppuccin.integrations"] = nil
         
         require("catppuccin").setup({
           flavour = flavor,
         })
         
         vim.o.background = is_dark and "dark" or "light"
         vim.cmd("colorscheme catppuccin")
       end
      
      update_theme()
      
      -- Create a command to manually update theme
      vim.api.nvim_create_user_command("ThemeSync", update_theme, {})
      
      -- Watch for system theme changes every 2 seconds using a timer
      local last_theme = get_system_theme()
      local timer = vim.loop.new_timer()
      timer:start(2000, 2000, vim.schedule_wrap(function()
        local current_theme = get_system_theme()
        if current_theme ~= last_theme then
          last_theme = current_theme
          update_theme()
        end
      end))
    end,
  },
  -- Configure LazyVim to use Catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
