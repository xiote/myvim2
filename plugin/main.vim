syntax on

set nocompatible
filetype plugin on
                                            " 편집모드에서 <C-p> to ESC
imap <C-p> <ESC>
                                            " backspace 제약 제거
set backspace=indent,eol,start
                                            " nmap은 쓰지 않는다. 콜론으로 명령모드 실행
"nmap {ab :ls<CR>

" 입력모드
                                            " 저장
"imap WW <C-o>:w<CR>
"
"imap DD <ESC>ddi
"imap PP <ESC>pi
"imap YY <ESC>Yi
"imap OO <ESC>oi
"                                            " 편집화면을 중앙으로 이동
"imap ZZ <ESC>zza
"
"imap JJ <Esc>yss"A
"
"imap HH <ESC>I
"imap SS <ESC>S
"imap CC <ESC>lC
"imap UU <ESC>ui
"imap RR <ESC>ui
"imap YY <ESC>Yi
"                                            " 라인의 가장 오른쪽으로
"imap LL <ESC>A

nnoremap o o<Esc>
nnoremap O O<Esc>

                                            " option+c to colon
nmap ç :
imap ç <C-o>ç

"https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
"Mode Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[2 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

set nocul
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

set autochdir           " 열린 파일에 맞춰서 자동으로 경로 변경
set autowrite
                        " 탭설정
set expandtab
set shiftwidth=4 
set softtabstop=4 

set nowrapscan          " 검색시, 키워드가 더이상없는 경우, 맨앞에서부터 검색되지 않도록

cabbre qq q!

cabbre re resolve

cabbre nd NERDTreeToggle
cabbre some source %
cabbre sshconfig edit ~/.ssh/config
cabbre cp !cp % 
cabbre cpkara !cp % ~/.config/karabiner/karabiner.json
cabbre cpk !cp % ~/.config/karabiner/karabiner.json
cabbre cpgosnpt !cp % ~/.vim/plugged/myvim/snippets/UltiSnips/go.snippets
cabbre cpsnpt !cp % ~/.vim/plugged/myvim/snippets/UltiSnips/go.snippets
cabbre kara edit ~/github.com/xiote/karabiner/karabiner.json
cabbre okara edit ~/github.com/xiote/karabiner/karabiner.json
cabbre del bdelete
cabbre delb bdelete!
cabbre ne bn
cabbre pr bp

cabbre vimwk edit ~/github.com/xiote/wiki/vim/index.md
cabbre zshrc edit ~/github.com/xiote/zsh/.zshrc

cabbre dotvim edit ~/github.com/xiote/myvim/plugin/dotnet.vim
cabbre pythonvim edit ~/github.com/xiote/myvim/plugin/python.vim
cabbre ansiblevim edit ~/github.com/xiote/myvim/plugin/ansible.vim
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
cabbre pairvim edit ~/github.com/xiote/myvim/plugin/auto-pairs.vim

if has("autocmd")
  filetype on
  autocmd FileType swift cabbre bl !swift build
endif

function! ClearScreen()
    silent !clear
    redraw!
endfunction
