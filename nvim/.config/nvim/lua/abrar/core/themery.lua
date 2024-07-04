
  -- Themery block
-- This block will be replaced by Themery.
local tokyonight = require('tokyonight')
tokyonight.setup({
style = "moon",
styles = {
comments = { italic = false},
keywords = { italic = false},
},
})

vim.cmd("colorscheme tokyonight")
vim.g.theme_id = 1
-- end themery block
