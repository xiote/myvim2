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
