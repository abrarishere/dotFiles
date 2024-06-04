return {
  "folke/neodev.nvim",
  opts = {},
  config = function()
    local neodev_config = {
      library = {
        enabled = false,
        runtime = false,
        types = true,
        plugins = { "nvim-dap-ui" },
      },
      setup_jsonls = false,
      override = function(root_dir, options) end,
      lspconfig = false,
      pathStrict = false,
    }
    return neodev_config
  end
}
