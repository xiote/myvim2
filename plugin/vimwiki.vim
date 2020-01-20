let g:vimwiki_list = [
    \{
    \    'path': '~/github.com/xiote/wiki/',
    \    'ext' : '.md'
    \}
\]

cabbre rl VimwikiRenameLink

nmap \w Gonew<ESC>:VimwikiFollowLink<CR>:VimwikiFollowLink<CR>\t
noremap \t I# title<CR><CR>## See also<CR><CR><ESC>:1<CR>:s/title/
