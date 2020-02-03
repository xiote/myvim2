let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '```':'```', '"""':'"""', "'''":"'''", "`":"`"}
let g:AutoPairsMapCR = 0
inoremap <buffer> <silent> <C-m> <C-R>=AutoPairsReturn()<CR>

