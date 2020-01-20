cabbre gp Git push
cabbre wc w <BAR> call ClearScreen() <BAR> silent Git add % <BAR> Git commit -a -m %

function! ClearScreen()
    silent !clear
    redraw!
endfunction
