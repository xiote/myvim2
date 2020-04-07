if has("autocmd")
  filetype on
  autocmd FileType swift cabbre bl !swift build
  autocmd FileType swift cabbre rn !swift run
  autocmd FileType swift cabbre ts !swift test
endif
