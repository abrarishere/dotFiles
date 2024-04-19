return {
  "NvChad/nvim-colorizer.lua",
  vim.keymap.set({"n", "v"}, "<leader>wC", "<Cmd>ColorizerToggle<CR>"),
  cmd = {
    "ColorizerToggle",
    "ColorizerAttachToBuffer",
    "ColorizerDetachFromBuffer",
    "ColorizerReloadAllBuffers",
  },
  opts = { user_default_options = { names = false } },
}
