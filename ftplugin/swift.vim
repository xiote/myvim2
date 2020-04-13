cabbre bl !swift build
cabbre rn !swift run 
cabbre ut !swift test

let b:ale_fixers = ['swiftformat']
let b:auto_save = 0
nnoremap <leader>, :let auto_save=0<cr>

" SourceKit-LSP configuration
if executable('sourcekit-lsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'sourcekit-lsp',
        \ 'cmd': {server_info->['sourcekit-lsp']},
        \ 'whitelist': ['swift'],
        \ })
endif


