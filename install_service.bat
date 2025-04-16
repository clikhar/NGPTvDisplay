@echo off
set SERVICE_NAME=IPISWebApp

:: Check if service exists
sc query "%SERVICE_NAME%" >nul 2>&1
if %errorlevel%==0 (
    echo Service "%SERVICE_NAME%" already exists. Removing it first...
    nssm\nssm.exe stop %SERVICE_NAME%
    nssm\nssm.exe remove %SERVICE_NAME% confirm
    timeout /t 3 >nul
)

echo Installing "%SERVICE_NAME%"...
nssm\nssm.exe install %SERVICE_NAME% "%~dp0service_start.bat"

echo Setting it to start automatically on boot...
nssm\nssm.exe set %SERVICE_NAME% Start SERVICE_AUTO_START

echo Done installing "%SERVICE_NAME%" service.
pause
