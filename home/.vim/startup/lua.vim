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

" Completion (completion-nvim)
" -----------------------------------------------------------------------------
" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
:lua << EOF
require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
EOF

let g:completion_trigger_on_delete = 1

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Manually trigger completion
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)

" Avoid showing message extra message when using completion
set shortmess+=c
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
nnoremap <leader>ds <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap [d <cmd>lua vim.lsp.diagnostic.goto_prev()()<CR>
nnoremap ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
" -----------------------------------------------------------------------------
