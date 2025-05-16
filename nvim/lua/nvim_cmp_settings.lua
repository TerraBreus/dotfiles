-- Load nvim-cmp and configure
local cmp = require'cmp'

cmp.setup({
  completion = {
    autocomplete = false,
    },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- Required
    end,
  },
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping.complete(),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },    -- LSP suggestions
    { name = 'luasnip' },     -- Snippet suggestions
  }, {
    { name = 'buffer' },      -- Words in open buffer
  })
})
