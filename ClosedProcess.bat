@echo off
echo Cerrando aplicaciones

set "apps=XboxPcAppFT.exe Battle.net.exe Steam.exe EpicGamesLauncher.exe EaLauncher.exe"

for %%l in (%apps%) do (
    taskkill /f /im %%l >nul 2>&1
    if errorlevel 1 (
        echo No se pudo cerrar %%l
    ) else (
        echo %%l cerrado.
    )
)

echo Todo despejado.
pause
