return{
  "CRAG666/code_runner.nvim",
  config = true ,
  vim.keymap.set("n", "<leader>rc", "<cmd>RunCode<CR>", { desc = "Run Code " }),
  vim.keymap.set("n", "<leader>rf", "<cmd>RunFile<CR>", { desc = "Run Code File  " }),
  vim.keymap.set("n", "<leader>rp", "<cmd>RunProject<CR>", { desc = "Run Code Project " }),
  vim.keymap.set("n", "<leader>rx", "<cmd>RunClose<CR>", { desc = "Close Code Run " }),
  opts = {
    filetype = {
      python = "python3 -u",
      c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
      cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
      sh = "bash",
      go = "go run",
      lua = "lua",
      julia = "julia",
      typescript = "ts-node",
      javascript = "node",
      rust = "cd $dir && cargo run",
      php = "php",
      java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
      kotlin = "cd $dir && kotlinc $fileName -include-runtime -d $fileNameWithoutExt.jar && java -jar $fileNameWithoutExt.jar",
    },
  }
}
