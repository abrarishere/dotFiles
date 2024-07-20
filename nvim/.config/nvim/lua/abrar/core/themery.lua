
  -- Themery block
-- This block will be replaced by Themery.
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
})

vim.cmd("colorscheme material")
vim.g.theme_id = 2
-- end themery block
