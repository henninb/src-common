@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist BubbleSort.java (
    java -jar BubbleSort.jar
) else (
    if NOT exist BubbleSort.java (
        echo copy bubble_sort.
        copy "..\..\bubble_sort\java_bubble_sort\BubbleSort.java" "BubbleSort.java"
    )
)

pause
