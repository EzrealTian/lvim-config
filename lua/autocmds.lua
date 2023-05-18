-- This file is automatically loaded by plugins.init

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- 设置背景
vim.api.nvim_create_autocmd("VimEnter", {
  group = augroup("colorscheme"),
  callback = function()
    -- vim.cmd.colorscheme "nord"
    vim.cmd.colorscheme "catppuccin"
    vim.o.background = "light"
  end,
})

-- 在 copy 后高亮
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  group = augroup("edit"),
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})