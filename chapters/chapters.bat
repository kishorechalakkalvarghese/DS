@echo off
setlocal ENABLEDELAYEDEXPANSION

rem Change this if your folder has a different path
set "TARGET_DIR=chapters"

if not exist "%TARGET_DIR%" (
    mkdir "%TARGET_DIR%"
)

for /L %%N in (1,1,184) do (
    set "NUM=00%%N"
    set "NUM=!NUM:~-3!"
    set "FILE=%TARGET_DIR%\namavali-!NUM!.tex"
    if not exist "!FILE!" (
        echo %%N - creating !FILE!
        type nul > "!FILE!"
    ) else (
        echo %%N - already exists: !FILE!
    )
)

endlocal
pause
