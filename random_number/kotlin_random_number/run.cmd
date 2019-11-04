@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist RandomNumber.kt (
    java -jar RandomNumber.jar
) else (
    if NOT exist RandomNumber.java (
        echo copy random_number.
        copy "..\..\random_number\kotlin_random_number\RandomNumber.kt" "RandomNumber.kt"
    )
)

pause
