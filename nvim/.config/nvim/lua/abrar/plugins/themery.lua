return {
  'zaldih/themery.nvim',
  lazy = false,
  vim.keymap.set({"n", "v"}, "<leader>th", "<Cmd>Themery<CR>"),
  priority = 1000,
  
  config = function()
    require("themery").setup({
      themes = {{
        name = 'tokyonight',
        colorscheme='tokyonight',
        before = [[
          local tokyonight = require('tokyonight')
          tokyonight.setup({
          style = "moon",
          transparent = true,
          styles = {
            comments = { italic = false},
            keywords = { italic = false},
            floats = "transparent",
            sidebars = "transparent",
          },
          })]]
      },
      {
          name = 'material',
          colorscheme='material',
          before = [[
            local material = require('material')
            material.setup({
                italics = {
                    comments = false,
                    keywords = false,
                    functions = false,
                    strings = false,
                    variables = false
                },
                disable = {
                    background = true,
                    term_colors = true,
                },
            })]]
      },
      {
          name = 'night-owl',
          colorscheme='night-owl',
          before = [[
            local night_owl = require('night-owl')
            night_owl.setup({
                bold = true,
                italics = false,
                underline = true,
                undercurl = true,
                transparent_background = true,
            })]]
      },
      {
          name = 'rose-pine-main',
          colorscheme='rose-pine-main',
          before = [[
            local rose_pine = require('rose-pine')
            rose_pine.setup({
              variant = "main",
              styles = {
              italic = false,
              },
            })]]
      },

      {
          name = 'rose-pine-moon',
          colorscheme='rose-pine-moon',
          before = [[
            local rose_pine = require('rose-pine')
            rose_pine.setup({
              variant = "moon",
              styles = {
              italic = false,
              },
            })]]
      },
      {
          name = 'rose-pine-dawn',
          colorscheme='rose-pine-dawn',
          before = [[
            local rose_pine = require('rose-pine')
            rose_pine.setup({
              variant = "dawn",
              styles = {
              italic = false,
              },
            })]]
      },
      {
          name = 'lackluster',
          colorscheme='lackluster'
      },
      {
          name = 'catppuccin-light',
          colorscheme='catppuccin',
          before = [[
            local catppuccin = require('catppuccin')
            catppuccin.setup({
                flavour = "latte",
                transparent_background = false,
                show_end_of_buffer = false,
                term_colors = false,
                styles = {
                    comments = { 'bold' },
                    conditionals = { 'bold' },
                },
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    },
            })]]
      },
      
      {
          name = 'catppuccin-mocha',
          colorscheme='catppuccin',
          before = [[
            local catppuccin = require('catppuccin')
            catppuccin.setup({
                flavour = "mocha",
                transparent_background = false,
                show_end_of_buffer = false,
                term_colors = false,
                styles = {
                    comments = { 'bold' },
                    conditionals = { 'bold' },
                },
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    },
            })]]
      },
      {
          name = 'catppuccin-frappe',
          colorscheme='catppuccin',
          before = [[
            local catppuccin = require('catppuccin')
            catppuccin.setup({
                flavour = "frappe",
                transparent_background = false,
                show_end_of_buffer = false,
                term_colors = false,
                styles = {
                    comments = { 'bold' },
                    conditionals = { 'bold' },
                },
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    },
            })]]
      },
      {
          name = 'catppuccin-macchiato',
          colorscheme='catppuccin',
          before = [[
            local catppuccin = require('catppuccin')
            catppuccin.setup({
                flavour = "macchiato",
                transparent_background = false,
                show_end_of_buffer = false,
                term_colors = false,
                styles = {
                    comments = { 'bold' },
                    conditionals = { 'bold' },
                },
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    },
            })]]
      }},
      themeConfigFile = "~/.config/nvim/lua/abrar/core/themery.lua",
      livePreview = true,
    })
  end,
}
