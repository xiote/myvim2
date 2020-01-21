cabbre linkmd LinkMarkdown

command! -nargs=* LinkMarkdown :call LinkMarkdown(<f-args>)

function! LinkMarkdown()
    call inputsave()
    let url = input('')
    call inputrestore()
    "[shell - Wget page title - Stack Overflow](https://stackoverflow.com/questions/9312154/wget-page-title)
    let title = system("wget --quiet -O - " . url . " | sed -n -e 's!.*<title>\\(.*\\)</title>.*!\\1!p'")
    let title = substitute(title,"\n",'','g')
    let link = "[" . title . "](" . url . ")"
    echom link
    execute "normal! a" link
endfunction
