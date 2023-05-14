-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.number = true         -- show line number
opt.relativenumber = true -- use relative line number
opt.clipboard = "unnamed" -- can use clipboard
opt.cursorline = true     -- Enable highlighting of the current line
opt.expandtab = true      -- Use spaces instead of tabs
opt.tabstop = 4           -- Number of spaces tabs count for
opt.shiftwidth = 4        -- Size of an indent
opt.mouse = "a"           -- Enable mouse mode