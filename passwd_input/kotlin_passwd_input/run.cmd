@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist PasswdInput.kt (
    java -jar PasswdInput.jar
) else (
    if NOT exist PasswdInput.java (
        echo copy passwd_input.
        copy "..\..\passwd_input\kotlin_passwd_input\PasswdInput.kt" "PasswdInput.kt"
    )
)

pause
