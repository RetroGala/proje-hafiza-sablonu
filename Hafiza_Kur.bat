@echo off
chcp 65001 >nul
echo ========================================================
echo   Repo Hafiza Sablonu Kurucu
echo ========================================================
echo.
set /p TARGET_DIR="Hafiza yapisinin kurulacagi proje klasor yolunu girin: "

if "%TARGET_DIR%"=="" (
    echo Klasor yolu bos birakilamaz!
    pause
    exit /b 1
)

if not exist "%TARGET_DIR%" (
    mkdir "%TARGET_DIR%"
)
if not exist "%TARGET_DIR%\docs\archive" (
    mkdir "%TARGET_DIR%\docs\archive"
)

set "SRC_DIR=%~dp0"

if not exist "%TARGET_DIR%\AGENTS.md" copy "%SRC_DIR%AGENTS.md" "%TARGET_DIR%\AGENTS.md" >nul
if not exist "%TARGET_DIR%\CLAUDE.md" copy "%SRC_DIR%CLAUDE.md" "%TARGET_DIR%\CLAUDE.md" >nul
if not exist "%TARGET_DIR%\GEMINI.md" copy "%SRC_DIR%GEMINI.md" "%TARGET_DIR%\GEMINI.md" >nul
if not exist "%TARGET_DIR%\docs\STATE.md" copy "%SRC_DIR%docs\STATE.md" "%TARGET_DIR%\docs\STATE.md" >nul
if not exist "%TARGET_DIR%\docs\DECISIONS.md" copy "%SRC_DIR%docs\DECISIONS.md" "%TARGET_DIR%\docs\DECISIONS.md" >nul
if not exist "%TARGET_DIR%\docs\TODO.md" copy "%SRC_DIR%docs\TODO.md" "%TARGET_DIR%\docs\TODO.md" >nul
if not exist "%TARGET_DIR%\docs\archive\README.md" copy "%SRC_DIR%docs\archive\README.md" "%TARGET_DIR%\docs\archive\README.md" >nul

echo.
echo [TAMAMLANDI] Hafiza dosyalari "%TARGET_DIR%" klasorune eklendi!
pause
