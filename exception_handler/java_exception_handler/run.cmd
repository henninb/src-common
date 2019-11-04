@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist ExceptionHandler.java (
    java -jar ExceptionHandler.jar
) else (
    if NOT exist ExceptionHandler.java (
        echo copy exception_handler.
        copy "..\..\exception_handler\java_exception_handler\ExceptionHandler.java" "ExceptionHandler.java"
    )
)

pause
