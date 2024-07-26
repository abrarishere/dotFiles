
  -- Themery block
-- This block will be replaced by Themery.
local night_owl = require('night-owl')
night_owl.setup({
bold = true,
italics = false,
underline = true,
undercurl = true,
transparent_background = true,
})

vim.cmd("colorscheme night-owl")
vim.g.theme_id = 3
-- end themery block
