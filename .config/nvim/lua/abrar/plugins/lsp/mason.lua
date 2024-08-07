return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "emmet_language_server",
        "jsonls",
        "pyright",
        -- 'pylsp',
        "jsonls",
        "grammarly",
        'intelephense',
        'stimulus_ls',
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        --LINTER
        'eslint_d',
        'eslint',
        'stylelint',
        'markdownlint',
        "pylint", -- python linter
        'phpcs', -- php linter
        -- FORMATTER
        "prettier", -- prettier formatter
        "isort", -- python formatter
        "black", -- python formatter
        "biome",
        'google-java-format',
        'mdformat',
        'php-cs-fixer',
        'sqlfluff',
        --DAP
        'debugpy',
        'ts-standard',
      },
    })
  end,
}

--Most Used LSP and Tools by me


--  autopep8
--  bash-language-server
--  biome
--  black
--  blade-formatter
--  clang-format
--  cmake-language-server
--  codespell
--  css-lsp
--  debugpy
--  docformatter
--  emmet-language-server
--  emmet-ls
--  eslint-lsp
--  eslint_d
--  google-java-format
--  grammarly-languageserver
--  html-lsp
--  intelephense
--  isort
--  java-debug-adapter
--  jdtls
--  json-lsp
--  markdownlint
--  mdformat
--  php-cs-fixer
--  phpcs
--  prettier
--  prettierd
--  pylint
--  pyright
--  shellcheck
--  shfmt
--  sql-formatter
--  sqlfluff
--  sqlfmt
--  stimulus-language-server
--  stylelint
--  tailwindcss-language-server
--  taplo
--  ts-standard
--  typescript-language-server
