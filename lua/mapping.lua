-- key mapping
lvim.keys.normal_mode["<Leader>rn"] = "<Cmd>lua vim.lsp.buf.rename()<CR>"
lvim.keys.normal_mode["<S-l>"] = "<Cmd>BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = "<Cmd>BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-c>"] = "<Cmd>BufferKill<CR>"
lvim.keys.normal_mode["<Leader>l"] = "<Cmd>Lazy<CR>"