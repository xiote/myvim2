syntax off

set nocompatible
filetype plugin on

                " nmap은 쓰지 않는다. 콜론으로 명령모드 실행
"nmap {ab :ls<CR>

                " .go 파일 저장시, gofmt를 위해서
imap ww <C-o>:w<CR>
                " 편집화면을 중앙으로 이동
imap zz <ESC>zza

inoremap <C-b> <Down>
inoremap <C-z> <Up>
inoremap <C-j> <Esc>o
inoremap <C-l> <Esc>A

autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

iabbre ca cabbre
cabbre re resolve

iabbre bq !=
iabbre nq !=
iabbre qq ==
iabbre eq ==
iabbre q =
iabbre ss =
iabbre cq :=
iabbre cp :=
iabbre gt >
iabbre lt <


cabbre cp !cp % 
cabbre cpkara !cp % ~/.config/karabiner/karabiner.json
cabbre cpgosnpt !cp % ~/.vim/plugged/myvim/snippets/UltiSnips/go.snippets
cabbre cpsnpt !cp % ~/.vim/plugged/myvim/snippets/UltiSnips/go.snippets
cabbre kara edit ~/github.com/xiote/karabiner/karabiner.json
cabbre del bdelete
cabbre delb bdelete!
cabbre some source %
cabbre ss suspend
cabbre ne bn
cabbre pr bp

cabbre vimwk edit ~/github.com/xiote/wiki/vim/index.md
cabbre zshrc edit ~/github.com/xiote/zsh/.zshrc

cabbre mainvim edit ~/github.com/xiote/myvim/plugin/main.vim
cabbre mvim edit ~/github.com/xiote/myvim/plugin/main.vim
cabbre mv edit ~/github.com/xiote/myvim/plugin/main.vim
cabbre gitvim edit ~/github.com/xiote/myvim/plugin/git.vim
cabbre gvim edit ~/github.com/xiote/myvim/plugin/git.vim
cabbre gv edit ~/github.com/xiote/myvim/plugin/git.vim
cabbre ultisnipsvim edit ~/github.com/xiote/myvim/plugin/ultisnips.vim
cabbre snvim edit ~/github.com/xiote/myvim/plugin/ultisnips.vim
cabbre syntasticvim edit ~/github.com/xiote/myvim/plugin/syntastic.vim
cabbre synvim edit ~/github.com/xiote/myvim/plugin/syntastic.vim
cabbre myvim edit ~/github.com/xiote/myvim/plugin/
cabbre linkmdvim edit ~/github.com/xiote/myvim/plugin/linkmd.vim
cabbre gosnpt edit ~/github.com/xiote/myvim/snippets/UltiSnips/go.snippets
cabbre govim edit ~/github.com/xiote/myvim/plugin/go.vim

cabbre pu PlugUpdate

set autochdir           " 열린 파일에 맞춰서 자동으로 경로 변경
set autowrite
                        " 탭설정
set expandtab
set shiftwidth=4 
set softtabstop=4 

set nowrapscan          " 검색시, 키워드가 더이상없는 경우, 맨앞에서부터 검색되지 않도록
function! ClearScreen()
    silent !clear
    redraw!
endfunction

                        " 매칭 스타일 지정
hi MatchParen cterm=none ctermbg=none ctermfg=none
