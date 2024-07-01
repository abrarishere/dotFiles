return {
  'zaldih/themery.nvim',
  lazy = false,
  priority = 1000,
  
  config = function()
    require("themery").setup({
      themes = {{
        name = 'tokyonight',
        colorscheme='tokyonight',
      },
      {
          name = 'material',
          colorscheme='material',
      },
      {
          name = 'night-owl',
          colorscheme='night-owl',
          before = function()
            local night_owl = require('night-owl')
            night_owl.setup({
                bold = true,
                italics = false,
                underline = true,
                undercurl = true,
                transparent_background = true,
            })
            end
      },
      {
          name = 'sonokai',
          colorscheme='sonokai',
      },
      {
          name = 'everforest',
          colorscheme='everforest',
      },
      {
          name = 'gruvbox',
          colorscheme='gruvbox-material',
      },
      {
          name = 'edge',
          colorscheme='edge',
      },
      {
          name = 'gruvbox',
          colorscheme='gruvbox',
      },
      {
          name = 'lackluster',
          colorscheme='lackluster'
      },
      {
          name = 'catppuccin',
          colorscheme='catppuccin',
      }},
      themeConfigFile = "~/.config/nvim/lua/abrar/core/themery.lua",
      livePreview = true,
    })
  end,
}
