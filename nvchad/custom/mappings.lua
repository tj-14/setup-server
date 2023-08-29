---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!

M.disabled = {
  n = {
    ["<leader>h"] = "",
  },
}

M.latex = {
  n = {
    ["<leader>rl"] = { "vim.cmd.VimtexCompile", "Vimtex Compile" },
  },
}

M.cpp = {
  n = {
    ["<leader>rr"] = { ":!g++ -std=c++17 % && ./a.out < 1.in<CR>", "Compile cpp and run with 1.in" },
    ["<leader>rt"] = { ":e 1.in<CR>", "Edit 1.in" },
  },
}

M.ledger = {
  n = {
    ["<leader>ls"] = { ":%! ledger -f - print --sort 'date, amount'<CR>", "Sort Ledger file" },
  },
}

return M
