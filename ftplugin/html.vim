let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let b:ale_fixers = ['prettier']
let b:ale_fix_on_save = 1
let b:auto_save = 1
