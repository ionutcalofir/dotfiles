" Language server
" -----------------------------------------------------------------------------
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
" -----------------------------------------------------------------------------

" Treesitter (nvim-treesitter)
" -----------------------------------------------------------------------------
:lua << EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
}
EOF
" -----------------------------------------------------------------------------

" Completion (nvim-cmp)
" -----------------------------------------------------------------------------
" Set completeopt to have a better completion experience
set completeopt=menu,menuone,noselect

:lua << EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    mapping = {
      ['<C-U>'] = cmp.mapping.scroll_docs(-4),
      ['<C-D>'] = cmp.mapping.scroll_docs(4),
      ['<C-SPACE>'] = cmp.mapping.complete(),
      ['<C-E>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ['<TAB>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
      ['<s-TAB>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' })
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
    }
  })

  -- Setup lspconfig.
  require'lspconfig'.pylsp.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  }
  require'lspconfig'.clangd.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  }
EOF
" -----------------------------------------------------------------------------

" Diagnostic
" -----------------------------------------------------------------------------
:lua << EOF
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = false,
        virtual_text = false,
        signs = true,
        update_in_insert = false,
    }
)
EOF
nnoremap <leader>ds <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap [d <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap ]d <cmd>lua vim.diagnostic.goto_next()<CR>
" -----------------------------------------------------------------------------
