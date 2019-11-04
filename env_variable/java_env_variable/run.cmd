@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist EnvVariable.java (
    java -jar EnvVariable.jar
) else (
    if NOT exist EnvVariable.java (
        echo copy env_variable.
        copy "..\..\env_variable\java_env_variable\EnvVariable.java" "EnvVariable.java"
    )
)

pause
