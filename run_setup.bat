@echo off
set PYTHON_DIR=%~dp0winpython\python
set PATH=%PYTHON_DIR%;%PYTHON_DIR%\Scripts;%PATH%

echo Installing required Python packages...
pip install -r requirements.txt

echo Installing service using NSSM...
call install_service.bat 

echo All done. Reboot to auto-start service.
pause
