local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]

local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },


  {
    "stevearc/conform.nvim",
    --  for users those who want auto-save conform + lazyloading!
    event = "BufWritePre",
    config = function()
      require "custom.configs.conform"
    end,
  },

  {
    "mfussenegger/nvim-lint",
    config = function()
      require "custom.configs.nvimlint"
    end,
  },

  {
    'Exafunction/codeium.vim',
    lazy = false,
    config = function ()
      require "custom.configs.codeium"
    end
  },

  {
    "L3MON4D3/LuaSnip",
    version = "v2.2.0",
    build = "make install_jsregexp",
    config = function ()
      require("custom.configs.luasnip")
    end
  },

  {
     "mg979/vim-visual-multi",
     lazy = false,
  },

  {
    "mrquantumcodes/bufferchad.nvim",
    lazy = false,
    config = function ()
      require("custom.configs.bufferchad")
    end
  },

  {
    "tpope/vim-obsession",
    lazy = false,
  },
}

return plugins
