return {
  "brenoprata10/nvim-highlight-colors",
  event = "VeryLazy",
config = function()
  local c = require("nvim-highlight-colors")
  c.setup({})
  end,
  
    vim.keymap.set('n', '<leader>wC', function()
    require('nvim-highlight-colors').toggle()
    end)
}
