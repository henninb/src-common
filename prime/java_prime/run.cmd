@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Prime.java (
    java -jar Prime.jar
) else (
    if NOT exist Prime.java (
        echo copy prime.
        copy "..\..\prime\java_prime\Prime.java" "Prime.java"
    )
)

pause
