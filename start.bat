@echo off
REM Simple script to start the weather app
echo Starting XMLUI Weather...

where python >nul 2>nul
if %errorlevel%==0 (
    start http://localhost:8000
    python -m http.server 8000
    exit /b 0
)

where python3 >nul 2>nul
if %errorlevel%==0 (
    start http://localhost:8000
    python3 -m http.server 8000
    exit /b 0
)

where npx >nul 2>nul
if %errorlevel%==0 (
    npx -y http-server -o
    exit /b 0
)

echo No Python or Node found. Please install one of:
echo   1) Python: https://python.org/downloads/ (check "Add Python to PATH")
echo   2) Node: https://nodejs.org
pause
