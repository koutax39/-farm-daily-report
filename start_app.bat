@echo off
setlocal

cd /d "%~dp0"
set "PORT=8765"
set "APP_URL=http://127.0.0.1:%PORT%/index.html"
set "PYTHON_EXE=C:\Users\fukus\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"

echo 農業作業日報アプリを起動しています...
echo.

if exist "%PYTHON_EXE%" goto start_server

where py >nul 2>nul
if not errorlevel 1 (
  set "PYTHON_EXE=py"
  goto start_server
)

where python >nul 2>nul
if not errorlevel 1 (
  set "PYTHON_EXE=python"
  goto start_server
)

echo Python が見つからないため、ローカルサーバーを起動できませんでした。
echo.
echo 代わりに index.html を Chrome または Edge にドラッグして開いてください。
echo.
pause
exit /b 1

:start_server
echo サーバーを起動します: %APP_URL%
echo.

if "%PYTHON_EXE%"=="py" (
  start "農業作業日報サーバー" /min py -m http.server %PORT% --bind 127.0.0.1
) else if "%PYTHON_EXE%"=="python" (
  start "農業作業日報サーバー" /min python -m http.server %PORT% --bind 127.0.0.1
) else (
  start "農業作業日報サーバー" /min "%PYTHON_EXE%" -m http.server %PORT% --bind 127.0.0.1
)

echo サーバーの起動を待っています...
timeout /t 3 /nobreak >nul

start "" "%APP_URL%"

echo.
echo ブラウザで開けない場合は、数秒待ってから再読み込みしてください。
echo アプリを終了するときは、別に開いた「農業作業日報サーバー」の黒い画面を閉じてください。
echo.
pause
