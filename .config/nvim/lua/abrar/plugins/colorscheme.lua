return {
  -- "marko-cerovac/material.nvim",
  'sekke276/dark_flat.nvim',
  priority = 1000,
  config = function()



     require("dark_flat").setup({
    --   style = "night",
       transparent = true,
    -- styles = {
    --    sidebars = "transparent",
    --    floats = "transparent",
    -- },
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
    vim.cmd("colorscheme dark_flat")
  end
}
