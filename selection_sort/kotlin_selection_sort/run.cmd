@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist SelectionSort.kt (
    java -jar SelectionSort.jar
) else (
    if NOT exist SelectionSort.java (
        echo copy selection_sort.
        copy "..\..\selection_sort\kotlin_selection_sort\SelectionSort.kt" "SelectionSort.kt"
    )
)

pause
