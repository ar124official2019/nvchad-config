---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format({ async = true })
      end,
      "formatting",
    }
  },

  v = {
    [">"] = { ">gv", "indent"},

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format({ async = true })
      end,
      "formatting",
    }
  },
}

-- more keybinds!

return M
