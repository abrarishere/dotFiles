return{
  "okuuva/auto-save.nvim",
  cmd = "ASToggle", -- optional for lazy loading on command
  event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
  opts = {
    -- your config goes here
    enabled = false, -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
  execution_message = {
    enabled = true,
    message = function() -- message to print on save
      return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
    end,
    dim = 0.18, -- dim the color of `message`
    cleaning_interval = 760, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
  },
    -- or just leave it empty :)
  },
}
