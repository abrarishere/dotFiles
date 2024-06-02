return{
    "NStefan002/screenkey.nvim",
    cmd = "Screenkey",
    version = "*",
    config = function()
    require("screenkey").setup({
    win_opts = {
        row = vim.o.lines - vim.o.cmdheight - 1,
        col = vim.o.columns - 1,
        relative = "editor",
        anchor = "SE",
        width = 20,
        height = 2,
        border = "single",
    },
    compress_after = 3,
    clear_after = 3,
    disable = {
        filetypes = {},
        buftypes = {},
    },
    group_mappings = false,
})
  end,
}
