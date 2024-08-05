return {
  'github/copilot.vim', 
  "marko-cerovac/material.nvim",
  'folke/tokyonight.nvim',
  'oxfist/night-owl.nvim',
  'catppuccin/nvim',
  'slugbyte/lackluster.nvim',
  'rose-pine/neovim',
  "szw/vim-maximizer",
  "morhetz/gruvbox",
  {
      "rachartier/tiny-inline-diagnostic.nvim",
      event = "VeryLazy",
      config = function()
          require('tiny-inline-diagnostic').setup()
      end
  },
  {
      "rachartier/tiny-code-action.nvim",

      vim.keymap.set("n", "<leader>ca", function()
        require("tiny-code-action").code_action()
      end, { noremap = true, silent = true }),
      dependencies = {
          {"nvim-lua/plenary.nvim"},
          {"nvim-telescope/telescope.nvim"},
      },
      event = "LspAttach",
      config = function()
          require('tiny-code-action').setup()
      end
  },
  keys = {

    { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },

  },
}
