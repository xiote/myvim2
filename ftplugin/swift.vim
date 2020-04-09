cabbre bl !swiftc %
cabbre rn !swift % 
cabbre ts !swift test
let b:ale_fixers = ['swiftformat']

" SourceKit-LSP configuration
if executable('sourcekit-lsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'sourcekit-lsp',
        \ 'cmd': {server_info->['sourcekit-lsp']},
        \ 'whitelist': ['swift'],
        \ })
endif


