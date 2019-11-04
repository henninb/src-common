@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Prime.kt (
    java -jar Prime.jar
) else (
    if NOT exist Prime.java (
        echo copy prime.
        copy "..\..\prime\kotlin_prime\Prime.kt" "Prime.kt"
    )
)

pause
