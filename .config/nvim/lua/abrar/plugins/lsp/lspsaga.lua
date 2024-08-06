return{
  "glepnir/lspsaga.nvim",
  cmd = "Lspsaga",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-tree/nvim-web-devicons",

    --Please make sure you install markdown and markdown_inline parser
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {

    rename = {
      -- https://nvimdev.github.io/lspsaga/rename/
      keys = {
        quit = { "<ESC>", "<C-q>", "<M-q>" },
      },
    },
    scroll_preview = {
      scroll_down = "<C-y>",
      scroll_up = "<C-e>",
    },
    finder = {
      -- https://nvimdev.github.io/lspsaga/finder/
      max_height = 0.5,
      left_width = 0.4,
      right_width = 0.4,
      keys = {
        toggle_or_open = "o",
        vsplit = "<M-v>",
        split = "<M-s>",
        -- tabe = "t",
        -- tabnew = "r",
        quit = { "q", "<ESC>" },
      },
    },
    definition = {
      -- https://nvimdev.github.io/lspsaga/definition/
      width = 0.85, -- defines float window width
      height = 0.6, -- defines float window height
      keys = {
        edit = "o",
        vsplit = "<M-v>",
        split = "<M-s>",
        quit = { "q", "<ESC>" },
      },
    },
    code_action = {
      -- https://nvimdev.github.io/lspsaga/codeaction/
      show_server_name = true,
      extend_gitsigns = true,
      keys = {
        quit = { "q", "<ESC>" },
        exec = { "<CR>", "o" },
      },
    },
    lightbulb = {
      enable = true,
    },
    hover = {
      -- https://nvimdev.github.io/lspsaga/hover/
      max_width = 0.9,
      max_height = 0.8,
    },
    diagnostic = {
      -- https://nvimdev.github.io/lspsaga/diagnostic/
      max_width = 0.7,
      max_height = 0.6,
    },
    callhierarchy = {
      -- layout = 'float', -- normal or float
      keys = {
        edit = "o", --edit (open) file
        vsplit = "<M-v>", -- vsplit
        split = "<M-s>", -- split"
        quit = { "q", "<ESC>" }, -- quit layout
      },
    },
    symbol_in_winbar = {
      enable = false,
    },
    beacon = {
      enable = true,
      frequency = 7,
    },
    ui = {
      -- Border type, see :help nvim_open_win
      border = "single",
      -- Expand icon
      -- expand = "",
      expand = "",
      -- Collapse icon
      collapse = "",
    },
  }
}
