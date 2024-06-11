-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua
require "etc.ascii"
require "etc.functions"

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvbox",
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    NvDashAscii = {
      fg = "orange",
      bg = "NONE",
    },
  },

  nvdash = {
    header = Split_string_by_newline(Pick_random_variable_pairs(Asciis)),
    load_on_startup = true,
  },
}
return M
