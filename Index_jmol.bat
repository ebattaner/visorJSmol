@echo off
title Servidor local para JSmol
echo ---------------------------------------
echo Iniciando servidor HTTP en esta carpeta
echo ---------------------------------------
echo.

set PORT=8000

REM Intentar con "python"
where python >nul 2>nul
if %errorlevel%==0 (
    start http://localhost:%PORT%/Index.html
    python -m http.server %PORT%
    goto fin
)

REM Si no existe "python", probar con "py"
where py >nul 2>nul
if %errorlevel%==0 (
    start http://localhost:%PORT%/Index.html
    py -m http.server %PORT%
    goto fin
)

echo No se ha encontrado Python en el sistema.
echo Instala Python desde https://www.python.org/downloads/
pause

:fin
