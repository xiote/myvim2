cabbre bl !javac % --class-path $(echo ../lib/*.jar | tr ' ' ':')
cabbre rn !java %
cabbre ut Gradle test

let b:ale_fixers = ['google_java_format']
