--All plugins are
-- 1 tiny-inline-diagnostic.nvim that is show only diagnostic in the current line and hide others
-- 2 bufferline.nvim that is a bufferline for neovim
-- 3 vim-maximizer that is a plugin to maximize and minimize a split
-- 4 lualine.nvim that is a statusline for neovim
-- 5 hoversplit.nvim that is a plugin to show the lsp details in hover and split mode
-- 6 smart resizing that is a plugin to resize the windows in a smart way
-- 7 sttusliNe that is a statusline for neovim
-- 8 stcursorword that is a plugin to highlight the word under the cursor
-- 9 url-open that is a plugin to open the url under the cursor
-- 10 toggleterm.nvim that is a plugin to open the terminal in neovim
-- 11 nvim-surround that is a plugin to surround the text with the given text
-- 12 nvim-autopairs that is a plugin to add the pairs automatically


return{
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    config = function()
      require('tiny-inline-diagnostic').setup()
    end
  },

  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
      options = {
        mode = "tabs",
        separator_style = "slope",
      },
    },
  },

  {
    "szw/vim-maximizer",
    keys = {
      { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
    }
  },

  -- {
  --   "nvim-lualine/lualine.nvim",
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  --   config = function()
  --     local lualine = require("lualine")
  --     local lazy_status = require("lazy.status")
  --     lualine.setup({
  --       options = {
  --         theme = 'powerline_dark',
  --       },
  --       sections = {
  --         lualine_x = {
  --           {
  --             lazy_status.updates,
  --             cond = lazy_status.has_updates,
  --             color = { fg = "#ff9e64" },
  --           },
  --           { "encoding" },
  --           -- { "fileformat" },
  --           { "filetype" },
  --         },
  --       },
  --     })
  --   end,
  -- },


  {
    "roobert/hoversplit.nvim",
    config = function()
      require("hoversplit").setup({
        key_bindings = {
          split_remain_focused = "<leader>hs",
          vsplit_remain_focused = "<leader>hv",
          split = "<leader>hs",
          vsplit = "<leader>hv",
        },
      })
    end,
  },

  {
    lazy = true,
    'sontungexpt/smart-resizing',
    vim.keymap.set("n", "<A-h>", function() require("smart-resizing").adjust_current_win_width(1, 1) end),
    vim.keymap.set("n", "<A-l>", function() require("smart-resizing").adjust_current_win_width(1, 2) end),
    vim.keymap.set("n", "<A-j>", function() require("smart-resizing").adjust_current_win_height(1, 1) end),
    vim.keymap.set("n", "<A-k>", function() require("smart-resizing").adjust_current_win_height(1, 2) end)
  },

  {
    "sontungexpt/sttusline",
    branch = "develop",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
  },


  {
    "sontungexpt/stcursorword",
    event = { "CursorHold", "CursorMoved" },
    main = "stcursorword",
    opts = {},
  },

  {
    "sontungexpt/url-open",
    branch = "mini",
    cmd = "URLOpenUnderCursor",
    event = { "CursorHold", "CursorMoved" },
    main = "url-open",
    opts = {
      open_app = "default",
      open_only_when_cursor_on_url = false,
      highlight_url = {
        all_urls = {
          enabled = true,
          fg = "#19ddff", -- "text" or "#rrggbb"
          bg = nil, -- nil or "#rrggbb"
          underline = true,
        },
        cursor_move = {
          enabled = true,
          fg = "#199eff", -- "text" or "#rrggbb"
          bg = nil, -- nil or "#rrggbb"
          underline = true,
        },
      },
      deep_pattern = false,
      extra_patterns = {},
    },
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {

      size = function(term) ---@type number|function
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<C-t>]],
      on_open = function(term)
        vim.api.nvim_command("startinsert")
        vim.defer_fn(
          function() vim.notify("Terminal " .. term.id .. " opened", vim.log.levels.INFO, { title = "ToggleTerm" }) end,
          100
        )
      end,
      on_close = function(term) vim.api.nvim_command("stopinsert") end,
      hide_numbers = true,
      autochdir = true,
      shade_filetypes = {},
      shade_terminals = false,
      -- the degree by which to darken to terminal colour,
      -- default: 1 for dark backgrounds, 3 for light
      shading_factor = 1,
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      persist_size = true,
      direction = "horizontal", -- | 'horizontal' | 'horizontal' | 'tab' | 'float',,
      close_on_exit = true, -- close the terminal window when the process exits
      shell = vim.o.shell, -- change the default shell
      auto_scroll = true,
      float_opts = {
        border = "single", -- single/double/shadow/curved
        width = math.floor(0.9 * vim.o.columns),
        height = math.floor(0.85 * vim.o.lines),
        winblend = 3,
      },
      winbar = {
        enabled = false,
        name_formatter = function(term) return "" end,
      },
    },
  },

  {
    "kylechui/nvim-surround",
    keys = { "ys", "ds", "cs" },
    opts = {},
  },

  {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = function()
      local autopairs = require("nvim-autopairs")

      -- configure autopairs
      autopairs.setup({
        check_ts = true, -- enable treesitter
        ts_config = {
          lua = { "string" }, -- don't add pairs in lua string treesitter nodes
          javascript = { "template_string" }, -- don't add pairs in javscript template_string treesitter nodes
          java = false, -- don't check treesitter on java
        },
      })

      -- import nvim-autopairs completion functionality
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")

      local cmp = require("cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },

  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     lsp = {
  --       signature = {
  --         enabled = false,
  --       },
  --     },
  --   },
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     {
  --       "rcarriga/nvim-notify",
  --       opts = {
  --         background_colour = "#1e222a",
  --         -- timeout = 2,
  --         render = "compact",
  --       },
  --       keys = {
  --         {
  --           '<leader>dn',
  --           function()
  --             require('notify').dismiss({ silent = true, pending = true })
  --           end,
  --           desc = 'Dismiss All Notifications',
  --         },
  --       },
  --     },
  --   }
  -- },

}
