" Enables autocomplete for java
" Remember to create a new project: :ProjectCreate <path-to-project> -n java
let g:EclimCompletionMethod = 'omnifunc'

" Enables autocomplete for python
let g:ycm_python_binary_path = '/usr/bin/python3'

" Disables the preview window of ycm
set completeopt-=preview

" Disables confirmation for ycm_extra_conf.py
let g:ycm_confirm_extra_conf = 0

" Map GoTo
nnoremap <leader>gt :YcmCompleter GoTo<CR>
