require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>rl", ":VimtexCompile<CR>")
map("n", "<leader>rr", ":!g++ -std=c++17 % && ./a.out < 1.in<CR>", { desc = "Compile cpp and run with 1.in" })
map("n", "<leader>rt", ":e 1.in<CR>", { desc = "Edit 1.in" })
map("n", "<leader>ls", ":%! ledger -f - print --sort 'date, amount'<CR>Gzz", { desc = "Sort Ledger file" })

-- Disable mappings
local nomap = vim.keymap.del

nomap("n", "<leader>h")
