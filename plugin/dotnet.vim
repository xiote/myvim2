if has("autocmd")
  filetype on
  autocmd FileType cs cabbre bl !dotnet build
  autocmd FileType cs cabbre rn !dotnet run
  autocmd FileType cs cabbre ts !dotnet test
autocmd BufWritePre <buffer> LspDocumentFormatSync
endif
