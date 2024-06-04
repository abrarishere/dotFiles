return {
  "anuvyklack/windows.nvim",
    event = "WinNew",
  requires = {
    "anuvyklack/middleclass",
    "anuvyklack/animation.nvim"
  },
  opts = {
      animation = { enable = true, duration = 50, fps = 60 },
      autowidth = { enable = true },
  },
  config = function()
    vim.o.winwidth = 5
    vim.o.winminwidth = 5
    vim.o.equalalways = false
    require('windows').setup()

    local function cmd(command)
      return table.concat({ '<Cmd>', command, '<CR>' })
    end

    vim.keymap.set('n', '<C-w>z', cmd 'WindowsMaximize')
    vim.keymap.set('n', '<C-w>_', cmd 'WindowsMaximizeVertically')
    vim.keymap.set('n', '<C-w>|', cmd 'WindowsMaximizeHorizontally')
    vim.keymap.set('n', '<C-w>=', cmd 'WindowsEqualize')
  end
}
