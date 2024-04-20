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
    "lua_ls",

    -- web dev stuff
    "html",
    "cssls",
    "cssmodules_ls",
    "somesass_ls",
    "tailwindcss",
    "stylelint_lsp",
    "emmet_language_server",
    "remark_ls",

    "tsserver",
    "angularls",
    "eslint",
    "jsonls",
    "prismals",
    "graphql",
    "denols",

    "intelephense",
    "pylsp",

    "yamlls",
    "dockerls",
    "docker_compose_language_service",
    "ansiblels",
    -- "nginx-language-server",
    -- "emmet-language-server",
    -- "codespell",
    -- "prettier",
    -- "shfmt",
    -- "prettierd"

    -- "firefox-debug-adaptor",
    -- "chrome-debug-adaptor",
    -- "js-debug-adaptor",
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
