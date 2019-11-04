@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist DegreesToRadians.java (
    java -jar DegreesToRadians.jar
) else (
    if NOT exist DegreesToRadians.java (
        echo copy degrees_to_radians.
        copy "..\..\degrees_to_radians\java_degrees_to_radians\DegreesToRadians.java" "DegreesToRadians.java"
    )
)

pause
