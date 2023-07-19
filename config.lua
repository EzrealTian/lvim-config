-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


-- plugins
lvim.plugins = {
  {
    "simrat39/rust-tools.nvim",
    -- lazy = "VeryLazy",
    config = function()
      local rt = require("rust-tools")
      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            vim.keymap.set("n", "<gl>", function()
              local float = vim.diagnostic.config().float

              if float then
                local config = type(float) == "table" and float or {}
                config.scope = "line"

                vim.diagnostic.open_float(config)
              end
            end, { buffer = bufnr })
          end,
        },
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("catppuccin").setup({
        flavour = "frappe", -- latte, frappe, macchiato, mocha
        background = {
          -- :h background
          light = "latte",
          dark = "frappe",
        },
        transparent_background = false,
        show_end_of_buffer = true, -- show the '~' characters after the end of buffers
        term_colors = true,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false, -- Force no italic
        no_bold = false,   -- Force no bold
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          notify = false,
          mini = false,
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      })
    end,
  },
  {
    "dhananjaylatkar/cscope_maps.nvim",
    dependencies = {
      "folke/which-key.nvim",          -- optional [for whichkey hints]
      "nvim-telescope/telescope.nvim", -- optional [for picker="telescope"]
      "ibhagwan/fzf-lua",              -- optional [for picker="fzf-lua"]
      "nvim-tree/nvim-web-devicons",   -- optional [for devicons in telescope or fzf]
    },
    opts = {
      cscope = {
        picker = "telescope"
      }
      -- USE EMPTY FOR DEFAULT OPTIONS
      -- DEFAULTS ARE LISTED BELOW
    },
  }
}

-- plugin config
require('plugin.alpha')
require('plugin.lualine')
-- vim.cmd('source ~/.config/lvim/lua/plugin/alpha.lua')
-- vim.cmd('source ~/.config/lvim/lua/plugin/lualine.lua')
lvim.colorscheme = "catppuccin"
lvim.builtin.project.patterns = { ".git" }

require('basic')
require('autocmd')
require('mapping')

require('dap.dap-config')
-- vim.cmd('source ~/.config/lvim/lua/basic.lua')
-- vim.cmd('source ~/.config/lvim/lua/autocmd.lua')
-- vim.cmd('source ~/.config/lvim/lua/mapping.lua')
