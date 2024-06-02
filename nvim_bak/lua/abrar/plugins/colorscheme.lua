return {
  -- "marko-cerovac/material.nvim",
  'folke/tokyonight.nvim',
  priority = 1000,
  config = function()



     require("tokyonight").setup({
      style = "storm",
       transparent = true,
    styles = {
       sidebars = "transparent",
    -- I am using false in italics as my font causes problems
       comments = { italic = false },
       floats = "transparent",
    },
    --   on_colors = function(colors)
    --     colors.bg = bg
    --     colors.bg_dark = bg_dark
    --     colors.bg_float = bg_dark
    --     colors.bg_highlight = bg_highlight
    --     colors.bg_popup = bg_dark
    --     colors.bg_search = bg_search
    --     colors.bg_sidebar = bg_dark
    --     colors.bg_statusline = bg_dark
    --     colors.bg_visual = bg_visual
    --     colors.border = border
    --     colors.fg = fg
    --     colors.fg_dark = fg_dark
    --     colors.fg_float = fg
    --     colors.fg_gutter = fg_gutter
    --     colors.fg_sidebar = fg_dark
    --   end
     })
    -- vim.g.material_style = "deep ocean"
    vim.cmd("colorscheme tokyonight")
  end
}
