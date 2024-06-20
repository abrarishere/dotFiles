return{
   "CRAG666/code_runner.nvim",
    config = true ,
    vim.keymap.set("n", "<leader>rc", "<cmd>RunCode<CR>", { desc = "Run Code " }),
    vim.keymap.set("n", "<leader>rf", "<cmd>RunFile<CR>", { desc = "Run Code File  " }),
    vim.keymap.set("n", "<leader>rp", "<cmd>RunProject<CR>", { desc = "Run Code Project " }),
    vim.keymap.set("n", "<leader>rx", "<cmd>RunClose<CR>", { desc = "Close Code Run " }),
}
