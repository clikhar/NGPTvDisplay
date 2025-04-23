@echo off
set PYTHON_DIR=%~dp0winpython\python
set PATH=%PYTHON_DIR%;%PYTHON_DIR%\Scripts;%PATH%

cd ipis
python manage.py runserver 0.0.0.0:8000

