@echo off
set SERVICE_NAME=IPISWebApp

:: Stop and delete service if it already exists
sc query "%SERVICE_NAME%" >nul 2>&1
if %errorlevel%==0 (
    echo Service exists. Removing it...
    nssm\nssm.exe stop %SERVICE_NAME%
    nssm\nssm.exe remove %SERVICE_NAME% confirm
    timeout /t 3 >nul
)

:: Install new service
::echo Installing "%SERVICE_NAME%"...
::nssm\nssm.exe install %SERVICE_NAME% "%~dp0service_start.bat"
::nssm\nssm.exe set %SERVICE_NAME% Start SERVICE_AUTO_START


:: Install new service
echo Installing "%SERVICE_NAME%"...
nssm\nssm.exe install %SERVICE_NAME% "%~dp0service_start.bat"

:: Set service to auto-start with Windows
nssm\nssm.exe set %SERVICE_NAME% Start SERVICE_AUTO_START

:: Auto-restart on crash
nssm\nssm.exe set %SERVICE_NAME% AppRestartDelay 5000
nssm\nssm.exe set %SERVICE_NAME% AppThrottle 1500
nssm\nssm.exe set %SERVICE_NAME% AppExit Default Restart


:: Start the service
echo Starting the service...
net start "%SERVICE_NAME%"

echo Service installed and configured for auto-restart.
pause

