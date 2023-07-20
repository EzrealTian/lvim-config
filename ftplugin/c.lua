vim.cmd("setlocal tabstop=8 shiftwidth=8")
vim.opt.expandtab = false

local formatters = require "lvim.lsp.null-ls.formatters"
local lvim_config_dir = os.getenv "LUNARVIM_CONFIG_DIR"
formatters.setup {
  {
    command = "clang-format",
    -- extra_args = { "--style", "file:~/.config/lvim/.clang-format" },
    extra_args = { "--style", "file:" .. lvim_config_dir .. "/.clang-format" },
    ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
    filetypes = { "c" },
  },
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "clangd" })
local capabilities = require("lvim.lsp").common_capabilities()
capabilities.offsetEncoding = { "utf-16" }
local opts = { capabilities = capabilities }
require("lvim.lsp.manager").setup("clangd", opts)

-- $LUNARVIM_CONFIG_DIR/ftplugin/lua.lua
-- local clangd_flags = {
--   "--offset-encoding=utf-16", --temporary fix for null-ls
--   -- "--clang-tidy-checks=-*,llvm-*,clang-analyzer-*,modernize-*,-modernize-use-trailing-return-type",
--   -- "--fallback-style=Google",
--   -- "--header-insertion=never",
--   -- "--query-driver=<list-of-white-listed-complers>"
-- }

-- local clangd_bin = "clangd"

-- local opts = {
--   cmd = { clangd_bin, unpack(clangd_flags) },
-- }
-- require("lvim.lsp.manager").setup("clangd", opts)
