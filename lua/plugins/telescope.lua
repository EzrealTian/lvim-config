return {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  dependencies = { 'nvim-lua/plenary.nvim' },
  lazy = true,
  cmd = "Telescope",
  keys = {
    { "<leader>f", ":Telescope find_files<CR>", desc = "find files" },
    { "<leader>p", ":Telescope live_grep<CR>", desc = "grep file" },
    { "<leader>rs", ":Telescope resume<CR>", desc = "resume" },
    { "<leader>o", ":Telescope oldfiles<CR>", desc = "oldfiles" },
  },
  config = function()
    require('telescope').setup{
      defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
          i = {
            -- 上下移动
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
            -- 关闭窗口
            ["<C-c>"] = "close",
            -- 预览窗口上下滚动
            ["<C-u>"] = "preview_scrolling_up",
            ["<C-d>"] = "preview_scrolling_down",
          }
        }
      },
      pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
      },
      extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
      }
    }
  end,
}