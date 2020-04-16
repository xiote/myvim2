cabbre bl !javac --class-path $(echo ../lib/*.jar <bar> tr ' ' ':') % 
cabbre rn !java --class-path $(echo ../lib/*.jar <bar> tr ' ' ':') % 
cabbre ut Gradle test

let b:ale_fixers = ['google_java_format']
let g:syntastic_java_javac_classpath = '../lib/reactive-streams-1.0.3.jar:../lib/rxjava-3.0.2.jar'
