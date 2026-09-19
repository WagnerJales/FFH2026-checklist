@echo off
setlocal enabledelayedexpansion

echo.
echo 🚀 Preparando deploy para Vercel...
echo.

REM Cria pasta public
if not exist public mkdir public
copy /Y app.html public\index.html

echo.
echo 📤 Enviando para Vercel (produção)...
echo.

REM Faz deploy
vercel --prod --yes

echo.
echo ✅ Deploy concluído!
echo.
echo Seu app está em: https://seu-projeto.vercel.app
echo.
pause
