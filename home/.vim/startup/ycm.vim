" Enables autocomplete for python
let g:ycm_python_binary_path = 'python3'

" Disables the preview window of ycm
set completeopt-=preview

" Disables confirmation for ycm_extra_conf.py
let g:ycm_confirm_extra_conf = 0

" Map GoTo
nnoremap <leader>gt :YcmCompleter GoTo<CR>
