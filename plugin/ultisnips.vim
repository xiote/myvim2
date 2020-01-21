" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

if !exists("g:UltiSnipsSnippetDirectories")
    let g:UltiSnipsSnippetDirectories = ["UltiSnips","snippets/UltiSnips"]
else
    let g:UltiSnipsSnippetDirectories += ["snippets/UltiSnips"]
endif
"let g:UltiSnipsSnippetDirectories = ['UltiSnips','UltiSnips2']
