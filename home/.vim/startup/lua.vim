nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> 1K <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

:lua << EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
    },
}
EOF

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
" Avoid showing message extra message when using completion
set shortmess+=c

" Diagnostic
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
