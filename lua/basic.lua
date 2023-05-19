vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- -- utf8
-- vim.g.encoding = "UTF-8"
-- vim.o.fileencoding = 'utf-8'

-- local opt = vim.opt
-- -- jkhl 移动时光标周围保留8行
-- opt.scrolloff = 8
-- opt.sidescrolloff = 8
-- -- 使用相对行号
-- opt.number = true
-- opt.relativenumber = true
-- -- 高亮所在行
-- opt.cursorline = true
-- -- 显示左侧图标指示列
-- opt.signcolumn = "yes"
-- -- 右侧参考线，超过表示代码太长了，考虑换行
-- opt.colorcolumn = "100"
-- opt.clipboard = "unnamedplus" -- Sync with system clipboard
-- opt.confirm = true -- Confirm to save changes before exiting modified buffer
-- opt.expandtab = true -- Use spaces instead of tabs
-- opt.mouse = "a" -- Enable mouse mode
-- opt.shiftwidth = 2 -- Size of an indent
-- opt.showmode = false -- Dont show mode since we have a statusline
-- opt.smartcase = true -- Don't ignore case with capitals
-- opt.smartindent = true -- Insert indents automatically
-- opt.autoindent = true
-- opt.splitbelow = true -- Put new windows below current
-- opt.splitright = true -- Put new windows right of current
-- opt.tabstop = 2 -- Number of spaces tabs count for
-- opt.termguicolors = true -- True color support
-- opt.timeoutlen = 300
-- opt.undofile = true
-- opt.undolevels = 10000
-- opt.winminwidth = 5 -- Minimum window width
-- opt.wrap = false -- Disable line wrap
-- opt.incsearch = true -- search while input
-- opt.autoread = true -- edited from other, auto loading
-- opt.completeopt = "menu,menuone,noselect" -- autocomplete no select
-- opt.list = true
-- opt.listchars = "space:·" -- show space as ·
-- opt.wildmenu = true



-- This file is automatically loaded by plugins.config
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.autowrite = true -- Enable auto write
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
opt.formatoptions = "jcroqlnt" -- tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
opt.laststatus = 0
opt.list = true -- Show some invisible characters (tabs...
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 4 -- Lines of context
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.shortmess:append({ W = true, I = true, c = true })
opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap

if vim.fn.has("nvim-0.9.0") == 1 then
  opt.splitkeep = "screen"
  opt.shortmess:append({ C = true })
end

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0