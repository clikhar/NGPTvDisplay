@echo off
set SERVICE_NAME=IPISWebApp
nssm\nssm.exe remove %SERVICE_NAME% confirm
pause
