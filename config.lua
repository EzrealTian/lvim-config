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
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
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
}

-- plugin config
lvim.builtin.alpha.dashboard.section.header = {
  type = "text",
  val = {
    [[                                                ]],
    [[                                                ]],
    [[                                                ]],
    [[███████╗███████╗██████╗ ███████╗ █████╗ ██╗     ]],
    [[██╔════╝╚══███╔╝██╔══██╗██╔════╝██╔══██╗██║     ]],
    [[█████╗    ███╔╝ ██████╔╝█████╗  ███████║██║     ]],
    [[██╔══╝   ███╔╝  ██╔══██╗██╔══╝  ██╔══██║██║     ]],
    [[███████╗███████╗██║  ██║███████╗██║  ██║███████╗]],
    [[╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝]],
    [[                                                ]],
    [[                                                ]],
    [[                                                ]],
  },
  opts = {
    position = "center",
    hl = "Type",
  },
}
lvim.builtin.alpha.dashboard.section.footer = {
  type = "text",
  val = {
    " For the open source!!!",
    "www.github.com/EzrealTian"
  },
  opts = {
    position = "center",
    hl = "Number",
  },
}
lvim.colorscheme = "catppuccin"
lvim.builtin.project.patterns = { ".git" }


-- basic config
lvim.format_on_save.enabled = true
vim.opt.clipboard = "unnamedplus"
vim.opt.list = true
vim.opt.listchars = "tab:<->,space:·" -- show space as ·
vim.opt.expandtab = true

-- key mapping
lvim.keys.normal_mode["<Leader>rn"] = "<Cmd>lua vim.lsp.buf.rename()<CR>"
lvim.keys.normal_mode["<S-l>"] = "<Cmd>BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = "<Cmd>BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-c>"] = "<Cmd>BufferKill<CR>"
lvim.keys.normal_mode["<Leader>l"] = "<Cmd>Lazy<CR>"


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
}
