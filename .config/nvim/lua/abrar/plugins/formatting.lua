return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" , 'ts-standard'},
        javascriptreact = { "prettier", "biome" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier"},
        json = { "prettier" },
        yaml = { "prettier"},
        markdown = { "prettier", "mdformat", "markdownlint" },
        graphql = { "prettier" },
        liquid = { "prettier" },
        sql = { "sqlfluff", "sqlformatter" },
        python = { "isort", "black" },
        java = { "google-java-formatter", "trivy" },
      },
      format_on_save = {
        lsp_fallback = true,
        -- async = false,
        -- timeout_ms = 1000,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = true,
        -- timeout_ms = 500,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
