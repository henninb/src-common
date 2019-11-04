@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist CollectionModel.kt (
    java -jar CollectionModel.jar
) else (
    if NOT exist CollectionModel.java (
        echo copy collection_model.
        copy "..\..\collection_model\kotlin_collection_model\CollectionModel.kt" "CollectionModel.kt"
    )
)

pause
