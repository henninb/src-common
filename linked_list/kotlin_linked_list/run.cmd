@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist LinkedList.kt (
    java -jar LinkedList.jar
) else (
    if NOT exist LinkedList.java (
        echo copy linked_list.
        copy "..\..\linked_list\kotlin_linked_list\LinkedList.kt" "LinkedList.kt"
    )
)

pause
