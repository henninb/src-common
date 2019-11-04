@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Timezone.java (
    java -jar Timezone.jar
) else (
    if NOT exist Timezone.java (
        echo copy timezone.
        copy "..\..\timezone\java_timezone\Timezone.java" "Timezone.java"
    )
)

pause
