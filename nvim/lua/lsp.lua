-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup()

vim.lsp.config('clangd', {})
-- Setup clangd
vim.lsp.enable('clangd')

-- Diagnostics for compilation errors.
vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- or ">>", "●", etc.
    spacing = 4,
  },
})

