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

cabbre vimrc edit ~/github.com/xiote/vim/.vimrc
cabbre mainvim edit ~/github.com/xiote/myvim/plugin/main.vim
cabbre mvim edit ~/github.com/xiote/myvim/plugin/main.vim

cabbre pu PlugUpdate

set autochdir

