@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist RandomNumber.java (
    java -jar RandomNumber.jar
) else (
    if NOT exist RandomNumber.java (
        echo copy random_number.
        copy "..\..\random_number\java_random_number\RandomNumber.java" "RandomNumber.java"
    )
)

pause
