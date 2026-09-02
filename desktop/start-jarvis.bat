@echo off
title J.A.R.V.I.S. Desktop Pilot
cd /d "%~dp0"

where py >nul 2>&1
if %errorlevel%==0 (
  py -3 start-jarvis.py
  goto :eof
)

where python >nul 2>&1
if %errorlevel%==0 (
  python start-jarvis.py
  goto :eof
)

echo Python was not found.
echo Opening the HUD in your browser anyway.
echo If Gemini calls fail, install Python 3 from python.org and run this file again.
echo.
start "" "%~dp0index.html"
pause
