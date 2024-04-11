local options = {
  formatters_by_ft = {
    html = { "prettier" },
    css = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    scss = { "prettier" },
    json = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" }, -- Corrected to markdown
    lua = { "stylua" },
    sh = { "shfmt" },
    zsh = { "shfmt" },
  },

  -- format_on_save = {
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
