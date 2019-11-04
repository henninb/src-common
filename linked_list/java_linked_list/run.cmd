@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist LinkedList.java (
    java -jar LinkedList.jar
) else (
    if NOT exist LinkedList.java (
        echo copy linked_list.
        copy "..\..\linked_list\java_linked_list\LinkedList.java" "LinkedList.java"
    )
)

pause
