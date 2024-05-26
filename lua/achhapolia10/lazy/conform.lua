return { -- Autoformat
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      javascript = { { "prettierd", "prettier" } },
      css = { { "prettierd", "prettier" } },
      scss = { { "prettierd", "prettier" } },
      javascriptreact = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      html = { { "prettierd", "prettier" } },
      typescriptreact = { { "prettierd", "prettier" } },
      php = { { "pretty-php" } },
      go = { "goimports", "gofumpt" },
      xml = { "xmlformat" }
    },
  },
}
