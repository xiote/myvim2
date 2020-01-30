syntax off

set nocompatible
filetype plugin on

nnoremap o o<Esc>
nnoremap O O<Esc>
inoremap <F2> <Esc>ciW"<Esc>pa"
inoremap <C-b> <Down>
inoremap <C-z> <Up>
inoremap <C-j> <Esc>o
"inoremap jj <ESC>

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

set autochdir
set autowrite

" 탭설정
set expandtab
set shiftwidth=4 
set softtabstop=4 

function! ClearScreen()
    silent !clear
    redraw!
endfunction
