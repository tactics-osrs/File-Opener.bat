@echo off
:Start
set /p FolderName="Enter the folder name: "
if exist "%FolderName%" (
    icacls "%FolderName%" >nul 2>&1
    if errorlevel 1 (
        echo You need elevated privileges to open this folder.
        pause
        goto Start
    ) else (
        start "" "%FolderName%"
        echo The folder "%FolderName%" was successfully opened.
        pause
        goto Start
    )
) else (
    echo The folder does not exist.
    pause
    goto Start
)
