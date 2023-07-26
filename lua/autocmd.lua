-- auto cmd
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
    pattern = { "*" },
    callback = function()
      vim.cmd [[ lua require('lvim.lsp.utils').format() ]]
    end
  }
  }
}
