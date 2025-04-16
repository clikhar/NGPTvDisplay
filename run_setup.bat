@echo off
echo Creating virtual environment using embedded Python...
python-embed\python.exe -m venv venv

echo Activating venv and installing packages...
call venv\Scripts\activate.bat
python -m pip install --upgrade pip
pip install -r requirements.txt

echo Installing service using NSSM...
call install_service.bat

echo All done. Reboot to auto-start service.
pause
