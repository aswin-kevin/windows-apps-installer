@echo off
setlocal enabledelayedexpansion

set "currentpath=%~dp0"
echo "Starting automatic software installation using Chocolatey"
echo "Run at your own risk"
echo "Script needs to run with administrative privileges"
echo.

:MENU
CLS
echo ...............................................
echo Please select a task:
echo 1 - Install Developer apps
echo 2 - Install Chocolatey (First Time)
echo 3 - Upgrade apps
echo 4 - Exit
echo ...............................................
echo.

SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF "%M%"=="1" GOTO INSTALL_DEVELOPER
IF "%M%"=="2" GOTO INSTALL_CHOCO
IF "%M%"=="3" GOTO UPGRADE_APPS
IF "%M%"=="4" GOTO EOF

:INSTALL_CHOCO
echo Installing or upgrading Chocolatey...
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "(iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))) >$null 2>&1" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n allowGlobalConfirmation
choco upgrade chocolatey
echo.
echo ...............................................
echo A RESTART OF THE BATCH FILE MAY BE NECESSARY!!
echo ...............................................
pause
GOTO MENU

:INSTALL_DEVELOPER
echo Installing Developer apps...
choco install "%currentpath%devapps.config"
pause
GOTO MENU

:UPGRADE_APPS
echo Upgrading all installed apps...
choco upgrade all
echo.
echo ...............................................
echo UPGRADE COMPLETED
echo ...............................................
pause
GOTO MENU

:EOF
endlocal
