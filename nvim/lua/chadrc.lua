-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "rosepine",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
  hl_add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
  },
}

return M
