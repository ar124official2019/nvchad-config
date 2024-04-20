local overrides = require "configs.overrides"

---@type NvPluginSpec[]

local plugins = {

  {
    "williamboman/mason.nvim",
    config = function()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require "configs.mason"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
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
      require "configs.conform"
    end,
  },

  {
    "mfussenegger/nvim-lint",
    config = function()
      require "configs.nvimlint"
    end,
  },

  {
    'Exafunction/codeium.vim',
    lazy = false,
    config = function ()
      require "configs.codeium"
    end
  },

  {
    "L3MON4D3/LuaSnip",
    version = "v2.2.0",
    build = "make install_jsregexp",
    config = function ()
      require("configs.luasnip")
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
      require("configs.bufferchad")
    end
  },

  {
    "tpope/vim-obsession",
    lazy = false,
  },
}

return plugins
