setlocal mps-=<:>

let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let b:ale_fixers = ['tidy']

"Config
".tidyrc
