vim.cmd("setlocal tabstop=4 shiftwidth=4")
vim.opt.listchars = "tab:<->,space:·" -- show space as ·

local formatters = require "lvim.lsp.null-ls.formatters"
local lvim_config_dir = os.getenv "LUNARVIM_CONFIG_DIR"
formatters.setup {
  {
    command = "clang-format",
    extra_args = { "--style", "file:" .. lvim_config_dir .. "/.clang-format" },
    ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
    filetypes = { "c", "cpp" },
  },
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "clangd" })
local capabilities = require("lvim.lsp").common_capabilities()
capabilities.offsetEncoding = { "utf-16" }
local opts = { capabilities = capabilities }
require("lvim.lsp.manager").setup("clangd", opts)
