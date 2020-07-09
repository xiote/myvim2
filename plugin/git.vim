cabbre gitcheckout Git checkout
    cabbre gch Git checkout -- %

cabbre gitlsfiles Git ls-files --stage
cabbre gls Git ls-files --stage

cabbre git Git

cabbre gitstatus Git status
cabbre gs Git status

cabbre gitreset Git reset
    cabbre gr Git reset

cabbre gitadd Git add
    cabbre ga Git add %

cabbre gitcommit Git commit
cabbre gitcommitall Git commit -a
cabbre gitcommitme <BAR>Git reset<BAR>Git add %<BAR>Git commit -m %
cabbre gcme <BAR>Git reset<BAR>Git add %<BAR>Git commit -m %
"    cabbre gc <BAR>Git reset<BAR>!git add %<BAR>Git commit -m %
    cabbre gc Git commit -m %
cabbre gitcommitamend GitCommitAmend 
cabbre gca GitCommitAmend 

cabbre gitpush Git push
cabbre gp Git push

cabbre gitpull Git pull
cabbre gu Git pull


cabbre gitbranchd GitBranchD
cabbre deletebranch GitBranchD
cabbre deletenewbranch Git branch -D new
cabbre dnb Git branch -D new
cabbre removebranch GitBranchD
cabbre rmbr GitBranchD
cabbre rb GitBranchD
cabbre removenewbranch Git branch -D new
cabbre rmnbr Git branch -D new
cabbre rmnb Git branch -D new
cabbre rnb Git branch -D new

cabbre gitcheckout GitCheckout
cabbre changebranch GitCheckout
cabbre chb GitCheckout
cabbre cb GitCheckout
cabbre gitcheckoutm Git checkout master
cabbre changemasterbranch Git checkout master
cabbre chmb Git checkout master
cabbre cmb Git checkout master
cabbre gitcheckoutn Git checkout new
cabbre changenewbranch Git checkout new
cabbre chnb Git checkout new
cabbre cnb Git checkout new

cabbre gitcheckoutb GitCheckoutB
cabbre newbranch GitCheckoutB
cabbre nb GitCheckoutB
cabbre makebranch GitCheckoutB
cabbre mkbr GitCheckoutB
cabbre gitcheckoutbn Git checkout -B new
cabbre newnewbranch Git checkout -B new
cabbre nnb Git checkout -B new
cabbre makenewbranch Git checkout -B new
cabbre mknbr Git checkout -B new
cabbre mknb Git checkout -B new


cabbre gitbranch Git branch
cabbre listbranch Git branch
cabbre lb Git branch

cabbre currentbranch Git rev-parse --abbrev-ref HEAD
cabbre currbr Git rev-parse --abbrev-ref HEAD
cabbre printworkingbranch Git rev-parse --abbrev-ref HEAD
cabbre pwb Git rev-parse --abbrev-ref HEAD

cabbre gpu Git push --set-upstream origin
cabbre gpun Git push --set-upstream origin new
cabbre gd Git diff
cabbre gl Git log

command! -nargs=* GitCheckout :call GitCheckout(<f-args>)
command! -nargs=* GitCheckoutB :call GitCheckoutB(<f-args>)
command! -nargs=* GitBranchD :call GitBranchD(<f-args>)
command! -nargs=* GitCommitAmend :call GitCommitAmend(<f-args>)

function! GitCheckout()
    call inputsave()
    let branch = input('')
    call inputrestore()
    execute 'Git checkout' branch
endfunction

function! GitCheckoutB()
    call inputsave()
    let branch = input('')
    call inputrestore()
    execute 'Git checkout -B' branch
endfunction

function! GitBranchD()
    call inputsave()
    let branch = input('')
    call inputrestore()
    execute 'Git branch -D' branch
endfunction

function! GitCommitAmend()
    call inputsave()
    let message = input('')
    call inputrestore()
    execute 'Git commit --amend -m"' message '"'
endfunction
