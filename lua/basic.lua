vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

local opt = vim.opt
-- jkhl 移动时光标周围保留8行
opt.scrolloff = 8
opt.sidescrolloff = 8
-- 使用相对行号
opt.number = true
opt.relativenumber = true
-- 高亮所在行
opt.cursorline = true
-- 显示左侧图标指示列
opt.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行
opt.colorcolumn = "100"
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.expandtab = true -- Use spaces instead of tabs
opt.mouse = "a" -- Enable mouse mode
opt.shiftwidth = 2 -- Size of an indent
opt.showmode = false -- Dont show mode since we have a statusline
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.autoindent = true
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap
opt.incsearch = true -- search while input
opt.autoread = true -- edited from other, auto loading
opt.completeopt = "menu,menuone,noselect" -- autocomplete no select
opt.list = true
opt.listchars = "space:·" -- show space as ·
opt.wildmenu = true