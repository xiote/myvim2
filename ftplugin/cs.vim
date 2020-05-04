cabbre bl !dotnet build
cabbre rn !dotnet run
cabbre ut !dotnet test

autocmd BufWritePre * OmniSharpCodeFormat

let b:ale_linters = ['OmniSharp']
