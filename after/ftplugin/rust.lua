vim.cmd("setlocal tabstop=4 shiftwidth=4")

local map = vim.keymap.set
local opts = { noremap = true, silent = true, buffer = 0 }
map("n", "<Leader>em", "<Cmd>RustExpandMacro<CR>", opts)
