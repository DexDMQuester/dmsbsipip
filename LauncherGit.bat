@echo off
setlocal enabledelayedexpansion
echo Phase-1
:: Define paths
set REPO_DIR=%~dp0
set EXE_NAME=DMS.exe
set EXE_PATH=%REPO_DIR%\%EXE_NAME%
echo Phase-2
:: Navigate to repo
cd /d "%REPO_DIR%"
echo Phase-3
:: Check if .exe is running
tasklist /FI "IMAGENAME eq %EXE_NAME%" | find /I "%EXE_NAME%" >nul
if %errorlevel%==0 (
    echo WARNING: %EXE_NAME% is currently running and may lock files.
    goto run_program
)
echo Phase-4
:: Attempt to restore .exe before pulling
echo Attempting to restore %EXE_NAME%...
git restore "%EXE_NAME%" >nul 2>&1
if %errorlevel%==0 (
    echo Restore succeeded.
) else (
    echo Restore failed or not needed.
)
echo Phase-5
:: Try git pull and capture output
echo Attempting git pull...
git pull > pull_output.txt 2>&1
set PULL_FAILED=0
echo Phase-6
:: Check for known failure patterns
for /f "delims=" %%A in (pull_output.txt) do call :check_line "%%A"
goto after_check

:check_line
set "line=%~1"
:echo DEBUG: !line!
echo !line! ^| findstr /i "Updating Fast-forward file changed" pull_output.txt >nul
if %errorlevel%==0 (
    set PULL_FAILED=0
) else (
    set PULL_FAILED=1
)

goto :eof

:after_check

echo Phase-7
:: If pull failed, skip update
if !PULL_FAILED! equ 1 (
    echo Git pull failed due to network or file lock issues.
    goto run_program
)
echo Phase-8
:: Success
echo Git pull succeeded.

echo Phase-9
:run_program
echo Launching program...
start "" "%EXE_PATH%"
endlocal