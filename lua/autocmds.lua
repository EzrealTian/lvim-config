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
			timeout = 500,
		})
	end,
})

-- close some filetypes with <q>
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("close_with_q"),
  pattern = {
    "PlenaryTestPopup",
    "help",
    "lspinfo",
    "man",
    "notify",
    "qf",
    "spectre_panel",
    "startuptime",
    "tsplayground",
    "checkhealth",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})