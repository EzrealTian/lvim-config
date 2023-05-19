return {
  {
    'nvim-telescope/telescope-project.nvim',
  },
  {
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
      local project_actions = require("telescope._extensions.project.actions")
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
          project = {
            base_dirs = {
              {'~/Desktop'},
              {'~/Documents', max_depth = 4},
              -- {path = '~/dev/src4'},
              -- {path = '~/dev/src5', max_depth = 2},
            },
            hidden_files = true, -- default: false
            theme = "dropdown",
            order_by = "asc",
            search_by = "title",
            sync_with_nvim_tree = true, -- default false
            -- default for on_project_selected = find project files
            on_project_selected = function(prompt_bufnr)
              -- Do anything you want in here. For example:
              project_actions.change_working_directory(prompt_bufnr, false)
              -- require("harpoon.ui").nav_file(1)
            end
          }
        }
      }
      require('telescope').load_extension('project')
    end,
  }
}