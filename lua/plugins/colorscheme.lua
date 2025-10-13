return {
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  -- Configure LazyVim to load cyberdream with theme detection
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        local theme
        -- Check the operating system
        if vim.fn.has("mac") == 1 then
          -- On macOS, check for dark mode preference
          local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
          if handle then
            local result = handle:read("*a")
            handle:close()
            if result:match("Dark") then
              theme = "dark"
            else
              theme = "light"
            end
          else
            theme = "dark" -- default to dark on macOS
          end
        elseif vim.fn.has("unix") == 1 then
          theme = os.getenv("GTK_THEME") or "default"
        else
          theme = "default"
        end

        -- Set the colorscheme based on the detected theme
        if theme:match("dark") then
          vim.cmd("colorscheme cyberdream") -- Dark theme
          return "cyberdream"
        else
          vim.cmd("colorscheme cyberdream-light") -- Light theme
          return "cyberdream-light"
        end
      end,
    },
  },
}
