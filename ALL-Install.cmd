@echo off
color F0
title Context Menu Tools for Windows File Explorer install
::get script directory finishing by \ without quotes
SET SCRIPT_PATH=%~dp0
::get script directory alone
set SCRIPT_PATH=%SCRIPT_PATH:~0,-1%

call :isAdmin
if %errorlevel% == 0 (
    goto :run
) else (
    color F9 & echo Requesting Administrator privileges...
    goto :UACPrompt
)
exit /b
:isAdmin
    fsutil dirty query %SystemDrive% >nul
exit /b
:run
::<BATCH ADMIN SCRIPT BELOW>

color F9 & echo Install...
cd "%SCRIPT_PATH%"

regedit /s CommandPrompt-here.reg
regedit /s GetHash.reg
regedit /s Git-here.reg
regedit /s List-in-Clipboard.reg
regedit /s List-in-Notepad.reg
regedit /s PowerShell-5-here.reg
regedit /s PowerShell-5-ISE-here.reg
regedit /s PowerShell-7-here.reg
regedit /s Windows-Terminal-here.reg

cls & color F2 & echo Installed. [Space] to close.
::pause >nul

::<BATCH ADMIN SCRIPT ABOVE>
exit /b
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%TEMP%\tempGetAdmin.vbs"
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1", "", "runas", 1 >> "%TEMP%\tempGetAdmin.vbs"
    "%TEMP%\tempGetAdmin.vbs"
    del "%TEMP%\tempGetAdmin.vbs"
exit /B
