@echo off

set OS=Windows_NT

call build N
if exist collection_model.exe (
    collection_model.exe
) else (
    if NOT exist collection_model.c (
        echo copy collection_model.
        copy "..\..\collection_model\c_collection_model\collection_model.c" "collection_model.c"
    )
)

pause
