-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()

lspconfig.clangd.setup({
    capabilities = capabilities,
    on_attach = function(_, bufnr)
        vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, { buffer = bufnr })
    end,
})

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 4,
  },
})

