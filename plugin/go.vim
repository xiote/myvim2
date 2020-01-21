cabbre pk Package
command! -nargs=* Package :call Package(<f-args>)
function! Package()
    call inputsave()
    let name = input('')
    call inputrestore()
    execute "normal! ipackage ". name. "\n"
endfunction

cabbre ip Import
command! -nargs=* Import :call Import(<f-args>)
function! Import()
    call inputsave()
    let name = input('')
    call inputrestore()
    execute "normal! iimport \"". name. "\"\n"
endfunction

cabbre fm FunctionMain
command! -nargs=* FunctionMain :call FunctionMain(<f-args>)
function! FunctionMain()
    :startinsert
    execute "normal! ifunc main() {\<CR>\<CR>}\<UP>\<TAB>"
endfunction

cabbre pf Printf
command! -nargs=* Printf :call Printf(<f-args>)
function! Printf()
    :startinsert
    execute "normal! ifmt.Printf()\<Right>"
endfunction
