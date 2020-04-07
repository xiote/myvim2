if has("autocmd")
  filetype on
  autocmd FileType swift cabbre bl !swift build
  autocmd FileType swift cabbre rn !swift run
  autocmd FileType swift cabbre ts !swift test
endif

if executable('sourcekit-lsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'sourcekit-lsp',
        \ 'cmd': {server_info->['sourcekit-lsp']},
        \ 'whitelist': ['swift'],
        \ })
endif
