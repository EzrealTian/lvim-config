local colors = {
    blue   = '#80a0ff',
    cyan   = '#79dac8',
    black  = '#080808',
    white  = '#c6c6c6',
    red    = '#ff5189',
    violet = '#d183e8',
    grey   = '#303030',
    text1    = '#080808',
    text2    = '#F2D5CF',
    text3    = '#303446',
    surface2 = '#626880',
    surface3 = '#303446',
  }
  
  local bubbles_theme = {
    normal = {
      a = { fg = colors.text1, bg = colors.violet },
      b = { fg = colors.text2, bg = colors.surface2 },
      c = { fg = colors.text3, bg = colors.surface3 },
    },
  
    insert = { a = { fg = colors.black, bg = colors.blue } },
    visual = { a = { fg = colors.black, bg = colors.cyan } },
    replace = { a = { fg = colors.black, bg = colors.red } },
  
    inactive = {
      a = { fg = colors.white, bg = colors.black },
      b = { fg = colors.white, bg = colors.black },
      c = { fg = colors.black, bg = colors.black },
    },
  }
  lvim.builtin.lualine.options = {
    -- theme = "catppuccin",
    theme = bubbles_theme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  }
  lvim.builtin.lualine.sections = {
    lualine_a = {
      { "mode", draw_empty = true, separator = { left = '', right = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { 'encoding', 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { left = '', right = '' }, left_padding = 2 },
    },
  }
  lvim.builtin.lualine.inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  }