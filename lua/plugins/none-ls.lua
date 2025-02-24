return {
  "nvimtools/none-ls.nvim",
  event = "LazyFile",
  dependencies = { "mason.nvim" },
  init = function()
    LazyVim.on_very_lazy(function()
      -- register the formatter with LazyVim
      LazyVim.format.register({
        name = "none-ls.nvim",
        priority = 200, -- set higher than conform, the builtin formatter
        primary = true,
        format = function(buf)
          return LazyVim.lsp.format({
            bufnr = buf,
            filter = function(client)
              return client.name == "null-ls"
            end,
          })
        end,
        sources = function(buf)
          local ret = require("null-ls.sources").get_available(vim.bo[buf].filetype, "NULL_LS_FORMATTING") or {}
          return vim.tbl_map(function(source)
            return source.name
          end, ret)
        end,
      })
    end)
  end,
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.root_dir = opts.root_dir
      or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
    opts.sources = vim.list_extend(opts.sources or {}, {
      nls.builtins.formatting.fish_indent,
      nls.builtins.diagnostics.fish,
      nls.builtins.formatting.stylua,
      nls.builtins.formatting.shfmt,
      -- Add prettier for scss, css, tsx, and ts formatting
      nls.builtins.formatting.prettier.with({
        filetypes = { "scss", "css", "tsx", "ts" }, -- Added "tsx" and "ts" filetypes
        -- Ignore files in the "temp" folder
        extra_args = { "--ignore-path", ".prettierignore" },
      }),
    })
    -- Add a global exclude filter to ignore "temp" directory
    opts.filters = vim.list_extend(opts.filters or {}, {
      function(source)
        return not source.name:match(".*/temp/.*")
      end,
    })
  end,
}
