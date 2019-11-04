@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist PasswdInput.java (
    java -jar PasswdInput.jar
) else (
    if NOT exist PasswdInput.java (
        echo copy passwd_input.
        copy "..\..\passwd_input\java_passwd_input\PasswdInput.java" "PasswdInput.java"
    )
)

pause
