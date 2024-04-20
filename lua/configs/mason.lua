local overrides = require "configs.overrides"

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = overrides.mason.ensure_installed,
}
