let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='sol'
let g:airline#extensions#tabline#formatter = 'unique_tail'
nnoremap <expr><silent> <leader>t &showtabline ? ":set showtabline=0\<cr>" : ":set showtabline=2\<cr>"

