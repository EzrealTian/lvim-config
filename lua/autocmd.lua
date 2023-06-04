-- auto cmd
local fn = function()
  vim.cmd [[ lua require('lvim.lsp.utils').format() ]]
  vim.cmd [[ 1,$s/\t/    /g ]]
end
lvim.autocommands = {
  {
    "VimEnter", {
    pattern = { "*" },
    callback = function()
      vim.o.background = "dark"
    end
  },
  },
  {
    "BufWritePre", {
    pattern = { "*.go" },
    callback = function()
      pcall(fn)
    end
  }
  },
  {
    "BufWritePre", {
    pattern = { "*.cpp", "*.cc", "*.h", "*.rs", "*.c", "*.lua" },
    callback = function()
      vim.cmd [[ lua require('lvim.lsp.utils').format() ]]
    end
  }
  }
}