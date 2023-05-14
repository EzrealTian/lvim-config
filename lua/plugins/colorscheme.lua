return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  config = function()
    require("catppuccin").setup(opts)
    -- load the colorscheme here
    vim.cmd(vim.cmd.colorscheme "catppuccin-latte") -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
  end,
}