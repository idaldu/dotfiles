return {
  -- Install eslint_d via Mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "eslint_d" })
    end,
  },

  -- Override conform.nvim to use eslint_d for JS/TS/Vue files
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      local js_fts = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
        "vue",
      }

      for _, ft in ipairs(js_fts) do
        opts.formatters_by_ft[ft] = { "eslint_d" }
      end

      return opts
    end,
  },
}
