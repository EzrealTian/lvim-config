-- key mapping
lvim.keys.normal_mode["<Leader>rn"] = "<Cmd>lua vim.lsp.buf.rename()<CR>"
lvim.keys.normal_mode["<Leader>l"] = "<Cmd>Lazy<CR>"
lvim.builtin.which_key.mappings['c'] = {}

lvim.builtin.bufferline.keymap.normal_mode["<Leader>bc"] = ":BufferKill<CR>"
