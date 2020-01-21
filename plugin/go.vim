cabbre pk Package

command! -nargs=* Package :call Package(<f-args>)

function! Package()
    call inputsave()
    let name = input('')
    call inputrestore()
    execute "normal! ipackage ". name. "\n"
endfunction
