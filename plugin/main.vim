syntax on

nnoremap o o<Esc>
nnoremap O O<Esc>

autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

iabbre c cabbre

cabbre cp !cp % 
cabbre cpkara !cp % ~/.config/karabiner/karabiner.json
cabbre del bdelete
cabbre some source %
cabbre ss suspend
cabbre ne bn
cabbre pr bp

cabbre vimrc edit ~/github.com/xiote/vim/.vimrc
cabbre myvim edit ~/github.com/xiote/myvim/plugin/.vim
cabbre mainvim edit ~/github.com/xiote/myvim/plugin/main.vim
cabbre mvim edit ~/github.com/xiote/myvim/plugin/main.vim
cabbre mv edit ~/github.com/xiote/myvim/plugin/main.vim
cabbre gitvim edit ~/github.com/xiote/myvim/plugin/git.vim
cabbre gvim edit ~/github.com/xiote/myvim/plugin/git.vim
cabbre gv edit ~/github.com/xiote/myvim/plugin/git.vim

cabbre pu PlugUpdate

set autochdir
set autowrite

function! ClearScreen()
    silent !clear
    redraw!
endfunction
