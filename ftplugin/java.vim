cabbre bl !javac --class-path '../lib/*' % 
cabbre rn !java --class-path '../lib/*' % 
cabbre ut Gradle test

let b:ale_fixers = ['google_java_format']
let b:ale_java_javac_classpath = '../lib/*'
let b:syntastic_java_javac_classpath = '../lib/*'
