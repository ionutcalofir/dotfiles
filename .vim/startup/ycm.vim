" Enable auto complete for java
" Remember to create a new project: :ProjectCreate <path-to-project> -n java
let g:EclimCompletionMethod = 'omnifunc'

" Enable auto complete for python
let g:ycm_python_binary_path = '/usr/bin/python3'

" Disable the preview window of ycm
set completeopt-=preview

" Disable confirmation for ycm_extra_conf.py
let g:ycm_confirm_extra_conf = 0
