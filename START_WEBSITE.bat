@echo off
setlocal
cd /d "%~dp0"
title DEV DOOT HANUMAN - Start Website
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed. Install Node.js 18+ from https://nodejs.org/
  start "" "https://nodejs.org/"
  pause
  exit /b 1
)
if not exist package.json (
  echo ERROR: package.json is missing. Extract the whole ZIP and run this file inside the project folder.
  pause
  exit /b 1
)
if not exist node_modules\express (
  echo First-time setup: installing dependencies. Please wait...
  call npm install
  if errorlevel 1 (echo Installation failed. Check internet and try again.& pause & exit /b 1)
)
set "PORT=3000"
echo Starting DEV DOOT HANUMAN at http://localhost:3000
start "" /b cmd /c "timeout /t 3 /nobreak >nul & start http://localhost:3000"
call npm start
echo Website stopped.
pause
