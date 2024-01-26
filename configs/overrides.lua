local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "html-lsp",
    "css-lsp",
    "typescript-language-server",
    "json-lsp",

    "angular-language-server",

    "cssmodules-language-server",
    "tailwindcss-language-server",

    "dockerfile-language-server",
    "docker-compose-language-service",
    "nginx-language-server",
    "yaml-language-server",

    "stylelint",
    "eslint-lsp",

    "emmet-ls",
    -- "emmet-language-server",
    "codespell",
    "prettier",
    "shfmt",
    -- "prettierd"
    
    "firefox-debug-adaptor",
    "chrome-debug-adaptor",
    "js-debug-adaptor",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
