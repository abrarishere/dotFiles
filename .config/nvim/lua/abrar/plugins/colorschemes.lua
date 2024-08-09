return {
  "marko-cerovac/material.nvim",
  'folke/tokyonight.nvim',
  'oxfist/night-owl.nvim',
  'catppuccin/nvim',
  'slugbyte/lackluster.nvim',
  'rose-pine/neovim',
  "morhetz/gruvbox",

  {
    "sontungexpt/witch",
    priority = 1000,
    lazy = false,
    opts = {

      theme = {
        enabled = true,
        style = "dark",
        extras = {
          -- bracket = true,
          -- dashboard = true,
          -- diffview = true,
          -- explorer = true,
          -- indentline = true,
        },

        customs = {
          -- require("witch.theme.example"),
        },

        --- @param style string : the current style of the theme
        --- @param colors table : the current colors of the theme
        --- @param highlight table : the current highlights of the theme
        on_highlight = function(style, colors, highlight) end,
      },

      dim_inactive = {
        enabled = true,
        level = 0.48,

      },

      switcher = true,
    },
  },
}
