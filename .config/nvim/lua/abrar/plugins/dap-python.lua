local plugins = {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup({
        layouts = { {
          elements = { {
            id = "scopes",
            size = 0.25
          }, {
              id = "breakpoints",
              size = 0.20
            }, {
              id = "stacks",
              size = 0.20
            }, {
              id = "watches",
              size = 0.20
            } },
          position = "left",
          size = 30
        }, {
            elements = { {
              id = "repl",
              size = 0.5
            }, {
                id = "console",
                size = 0.5
              } },
            position = "bottom",
            size = 15
          } },
      })
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "mfussenegger/nvim-dap",
    keys = {
      {"<leader>dc", "<cmd>lua require('dap').continue()<CR>", desc = "Continue"},
      {"<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<CR>", desc = "Toggle breakpoint"},
      {"<leader>dr", "<cmd>lua require('dap').repl.toggle()<CR>", desc = "Toggle REPL"},
      {"<leader>ds", "<cmd>lua require('dap').start()<CR>", desc = "Start"},
      {"<leader>dt", "<cmd>lua require('dap').stop()<CR>", desc = "Stop"},
      {"<leader>di", "<cmd>lua require('dap').step_into()<CR>", desc = "Step into"},
      {"<leader>do", "<cmd>lua require('dap').step_over()<CR>", desc = "Step over"},
      {"<leader>du", "<cmd>lua require('dap').step_out()<CR>", desc = "Step out"},
      {"<leader>dp", "<cmd>lua require('dap').pause()<CR>", desc = "Pause"},
      {"<leader>dl", "<cmd>lua require('dap').run_last()<CR>", desc = "Run last"},
    },
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      'nvim-neotest/nvim-nio',
      'theHamsta/nvim-dap-virtual-text',
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup("python")
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    opts ={
      enabled = true,
      enabled_commands = true,
      highlight_changed_variables = true,
      highlight_new_as_changed = false,
      show_stop_reason = true,
      commented = false,
      only_first_definition = true,
      all_references = false,
      clear_on_continue = false,
      display_callback = function(variable, buf, stackframe, node, options)

        if options.virt_text_pos == 'inline' then
          return ' = ' .. variable.value:gsub("%s+", " ")
        else
          return variable.name .. ' = ' .. variable.value:gsub("%s+", " ")
        end
      end,
      virt_text_pos = vim.fn.has 'nvim-0.10' == 1 and 'inline' or 'eol',
      --experimental
      all_frames = false,
      virt_lines = false,
      virt_text_win_col = nil
    }
  },
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
    config = function()
      require('venv-selector').setup {
        search_venv_managers = false,
        dap_enabled = true,
        stay_on_this_version = true,
        name = {'venv', 'env', 'flask', 'django', 'langualink'},

    vim.api.nvim_create_autocmd('VimEnter', {
      desc = 'Auto select virtualenv Nvim open',
      pattern = '*',
      callback = function()
        local venv = vim.fn.findfile('pyproject.toml', vim.fn.getcwd() .. ';')
        if venv ~= '' then
          require('venv-selector').retrieve_from_cache()
        end
      end,
      once = true,
    }),
      }
    end,
    event = 'VeryLazy',
  }
}
return plugins
