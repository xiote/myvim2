syntax on

set encoding=utf-8
set nocompatible
filetype plugin on
                                            " 줄번호 표시
set number
set mouse=a
                                            " backspace 제약 제거
set backspace=indent,eol,start


let mapleader="'"
                                            " 단축키

                                            " kill buffer anyway
nnoremap <c-k> :bd!<cr>
nnoremap <c-s> :w<cr>

                                            " break history
inoremap <space> <c-g>u<space>
inoremap . <c-g>u.
inoremap <bs>    <c-g>u<bs>
inoremap <c-w>   <c-g>u<c-w>
inoremap <c-h>   <c-g>u<c-h>
"inoremap <CR>   <c-g>u<CR>
inoremap <TAB>   <c-g>u<TAB>

imap <C-l> <c-o>
imap <C-x> <c-o>
                                            " delete a char
imap <C-d> <c-o>x
                                            " arrow
imap <C-n> <Down>
imap <C-p> <Up>
imap <C-b> <Left>
imap <C-f> <Right>
                                            " delete rest of line
imap <C-k> <c-o>D
                                            " beginning of line
imap <C-a> <c-o>I
                                            " end of line
imap <C-e> <c-o>A
                                            " control+b to colon
imap <C-b> <C-o>:



nmap <C-a> ^
nmap <C-e> $
"nmap <C-S-b> :
nmap o o<Esc>
nmap O O<Esc>
nmap <C-l> zz


"https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
"Mode Settings

"if has('macunix')
"    let &t_SI.="\e[6 q" "SI = INSERT mode
"    let &t_SR.="\e[2 q" "SR = REPLACE mode
"    let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)
"endif

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

"set nocul
"autocmd InsertEnter * set cul
"autocmd InsertLeave * set nocul
"
                        " 폴더 자동 생성, :edit /path/file 
autocmd BufNewFile * :exe ': Silent mkdir -p ' . escape(fnamemodify(bufname('%'),':p:h'),'#% \\')

                        " HTML 파일은 <>커서 selection 중지
autocmd BufWinEnter *.html set mps-=<:>

set autochdir           " 열린 파일에 맞춰서 자동으로 경로 변경
set autowrite
                        " 탭설정
set expandtab
set shiftwidth=4 
set softtabstop=4 

set nowrapscan          " 검색시, 키워드가 더이상없는 경우, 맨앞에서부터 검색되지 않도록

cabbre enew enew!

cabbre ww wincmd w

cabbre re resolve

cabbre some source %
cabbre sshconfig edit ~/.ssh/config
cabbre cp !cp % 
cabbre cpahk !cp % ~/main.ahk
cabbre kara edit ~/dotfiles/dotfiles/karabiner.json
cabbre cpkara !cp % ~/.config/karabiner/karabiner.json
cabbre ahk edit ~/github.com/xiote/autohotkey/main.ahk
cabbre okara edit ~/github.com/xiote/karabiner/karabiner.json
cabbre ne bn
cabbre pr bp

cabbre vimwk edit ~/github.com/xiote/wiki/vim/index.md
cabbre zshrc edit ~/github.com/xiote/zsh/.zshrc

cabbre swiftvim edit ~/.vim/plugged/myvim/ftplugin/swift.vim
cabbre csvim edit ~/.vim/plugged/myvim/ftplugin/cs.vim
cabbre govim edit ~/.vim/plugged/myvim/ftplugin/go.vim

cabbre pythonvim edit ~/.vim/plugged/myvim/plugin/python.vim
cabbre ansiblevim edit ~/.vim/plugged/myvim/plugin/ansible.vim
cabbre mainvim edit ~/.vim/plugged/myvim/plugin/main.vim
cabbre mvim edit ~/.vim/plugged/myvim/plugin/main.vim
cabbre mv edit ~/.vim/plugged/myvim/plugin/main.vim
cabbre gitvim edit ~/.vim/plugged/myvim/plugin/git.vim
cabbre gvim edit ~/.vim/plugged/myvim/plugin/git.vim
cabbre gv edit ~/.vim/plugged/myvim/plugin/git.vim
cabbre ultisnipsvim edit ~/.vim/plugged/myvim/plugin/ultisnips.vim
cabbre snvim edit ~/.vim/plugged/myvim/plugin/ultisnips.vim
cabbre syntasticvim edit ~/.vim/plugged/myvim/plugin/syntastic.vim
cabbre synvim edit ~/.vim/plugged/myvim/plugin/syntastic.vim
cabbre myvim edit ~/.vim/plugged/myvim/plugin/
cabbre linkmdvim edit ~/.vim/plugged/myvim/plugin/linkmd.vim
cabbre alsnpt edit ~/.vim/plugged/myvim/snippets/UltiSnips/all.snippets
cabbre gosnpt edit ~/.vim/plugged/myvim/snippets/UltiSnips/go.snippets
cabbre pairvim edit ~/.vim/plugged/myvim/plugin/auto-pairs.vim

command! -nargs=1 Silent
\   execute 'silent !' . <q-args>
\ | execute 'redraw!'

function! ClearScreen()
    silent !clear
    redraw!
endfunction


"inoremap <CR>   <c-g>u<CR>
inoremap <cr> <c-g>u<CR><c-o>:call Enter()<cr>

function! Enter()
if strcharpart(getline('.')[col('.')-1:], 0, 1)=='<'
    execute 'normal!' "i\<cr>\<up>\<tab>\<left>"
endif
endfunction
