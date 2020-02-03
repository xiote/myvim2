let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '```':'```', '"""':'"""', "'''":"'''", "`":"`"}
let g:AutoPairsMapCR = 1
inoremap <buffer> <silent> <LF> <C-R>=AutoPairsReturn()<CR>

