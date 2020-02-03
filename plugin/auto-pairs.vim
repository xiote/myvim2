let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '```':'```', '"""':'"""', "'''":"'''", "`":"`"}
let g:AutoPairsMapCR = 1
let g:AutoPairsMapBS = 0
let g:AutoPairsMapCh = 0
imap <buffer> <silent> <C-j> <C-R>=AutoPairsReturn()<CR>

