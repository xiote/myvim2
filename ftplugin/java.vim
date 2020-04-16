cabbre bl !javac % --class-path $(echo ../lib/*.jar <bar> tr ' ' ':') 
cabbre rn !java % --class-path $(echo ../lib/*.jar <bar> tr ' ' ':') 
cabbre ut Gradle test

let b:ale_fixers = ['google_java_format']
