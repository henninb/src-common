@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist SelectionSort.java (
    java -jar SelectionSort.jar
) else (
    if NOT exist SelectionSort.java (
        echo copy selection_sort.
        copy "..\..\selection_sort\java_selection_sort\SelectionSort.java" "SelectionSort.java"
    )
)

pause
