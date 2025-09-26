@echo off
setlocal enabledelayedexpansion

:: Define paths
set REPO_DIR=%~dp0
set EXE_NAME=X.exe
set EXE_PATH=%REPO_DIR%\%EXE_NAME%

:: Navigate to repo
cd /d "%REPO_DIR%"

:: Check if .exe is running
tasklist /FI "IMAGENAME eq %EXE_NAME%" | find /I "%EXE_NAME%" >nul
if %errorlevel%==0 (
    echo WARNING: %EXE_NAME% is currently running and may lock files.
    goto run_program
)

:: Attempt to restore .exe before pulling
echo Attempting to restore %EXE_NAME%...
git restore "%EXE_NAME%" >nul 2>&1
if %errorlevel%==0 (
    echo Restore succeeded.
) else (
    echo Restore failed or not needed.
)

:: Try git pull and capture output
echo Attempting git pull...
git pull > pull_output.txt 2>&1
set PULL_FAILED=0

:: Check for known failure patterns
for /f "delims=" %%A in (pull_output.txt) do (
    set "line=%%A"
    echo !line! | findstr /i "error failed unable lock" >nul
    if !errorlevel! equ 0 (
        set PULL_FAILED=1
    )
)

:: If pull failed, skip update
if !PULL_FAILED! equ 1 (
    echo Git pull failed due to network or file lock issues.
    goto run_program
)

:: Success
echo Git pull succeeded.

:run_program
echo Launching program...
start "" "%EXE_PATH%"
endlocal