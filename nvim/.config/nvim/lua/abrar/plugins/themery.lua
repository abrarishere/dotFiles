return {
  'zaldih/themery.nvim',
  lazy = false,
  priority = 1000,
  
  config = function()
    require("themery").setup({
      themes = { 'tokyonight', 'material', 'night-owl', 'sonokai', 'everforest', 'gruvbox-material', 'edge', 'gruvbox', 'lackluster' ,'catppuccin' },
      themeConfigFile = "~/.config/nvim/lua/abrar/core/themery.lua",
      livePreview = true, -- Apply theme while browsing. Default to true.
    })
  end,
}
