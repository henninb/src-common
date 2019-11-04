@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Timezone.kt (
    java -jar Timezone.jar
) else (
    if NOT exist Timezone.java (
        echo copy timezone.
        copy "..\..\timezone\kotlin_timezone\Timezone.kt" "Timezone.kt"
    )
)

pause
