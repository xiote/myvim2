syntax on

set encoding=utf-8
set nocompatible
filetype plugin on
                                            " 줄번호 표시
" set number
" set mouse=a
                                            " backspace 제약 제거
set backspace=indent,eol,start


let mapleader="'"
                                            " 단축키

                                            " save
nnoremap <c-s> :w<cr>



imap <C-l> <c-o>

                                            " center
imap <C-x> <c-o>
nmap <C-x> zz
                                            " Visual
imap <C-v> <c-o>V
                                            " delete a char
imap <C-d> <c-o>x
                                            " delete rest of line
imap <C-k> <c-o>D
                                            " beginning of line
imap <C-a> <c-o>I
nmap <C-a> ^
                                            " end of line
imap <C-e> <c-o>A
nmap <C-e> $
                                            " close buffer anyway
" imap <C-q> <c-o>:bd!<cr>
                                            " easymotion char
imap <C-g> <c-o><leader><leader>s
                                            " search
imap <C-f> /
                                            " undo
imap <C-u> <C-o>u
                                            " Visual Line 
nmap <C-l> V

map <Leader><Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>l <Plug>(easymotion-overwin-line)


imap <C-q> <Esc>:
nmap <C-q> :
nmap o o<Esc>
nmap O O<Esc>



                        " 폴더 자동 생성, :edit /path/file 
autocmd BufNewFile * :exe ': Silent mkdir -p ' . escape(fnamemodify(bufname('%'),':p:h'),'#% \\')

                        " HTML 파일은 <>커서 selection 중지
autocmd BufWinEnter *.html set mps-=<:>

                        " 열린 파일에 맞춰서 자동으로 경로 변경
set autochdir          

set autowrite

"                         " 탭설정
" set expandtab
" set shiftwidth=4 
" set softtabstop=4 

set nowrapscan          " 검색시, 키워드가 더이상없는 경우, 맨앞에서부터 검색되지 않도록

cabbre tc TComment

cabbre qq q!
cabbre bq bd!
cabbre enew enew!

cabbre ww wincmd w

cabbre re resolve

cabbre some source %
cabbre sshconfig edit ~/.ssh/config
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
cabbre ulvim edit ~/.vim/plugged/myvim/plugin/ultisnips.vim
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
" inoremap <cr> <c-g>u<CR><c-o>:call Enter()<cr>

function! Enter()
if strcharpart(getline('.')[col('.')-1:], 0, 1)=='<'
    execute 'normal!' "i\<cr>\<up>\<tab>\<left>"
endif
endfunction


" inoremap <tab> <c-r>=Smart_TabComplete()<CR>

function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction
