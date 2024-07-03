
  -- Themery block
-- This block will be replaced by Themery.
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
})

vim.cmd("colorscheme catppuccin")
vim.g.theme_id = 11
-- end themery block
