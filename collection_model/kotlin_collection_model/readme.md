compile

PATH=$HOME/.sdkman/candidates/kotlin/current/bin:$PATH
PATH=$HOME/.sdkman/candidates/gradle/current/bin:$PATH

kotlinc example.kt -include-runtime -d example.jar