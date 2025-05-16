-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup()

-- Load LSP server config
local lspconfig = require("lspconfig")

-- Setup clangd
lspconfig.clangd.setup({})


-- Diagnostics for compilation errors.
vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- or ">>", "●", etc.
    spacing = 4,
  },
})

