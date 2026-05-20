
@echo off
set "origem=%USERPROFILE%\Downloads"

:: Definindo os caminhos das pastas de destino
set "img_dir=%origem%\imagens"
set "doc_dir=%origem%\documentos"
set "inst_dir=%origem%\instaladores"
set "vid_dir=%origem%\videos"
set "aud_dir=%origem%\audios"
set "zip_dir=%origem%\compactos"

:: Criando as pastas de destino caso elas ainda não existam
if not exist "%img_dir%" mkdir "%img_dir%"
if not exist "%doc_dir%" mkdir "%doc_dir%"
if not exist "%inst_dir%" mkdir "%inst_dir%"
if not exist "%vid_dir%" mkdir "%vid_dir%"
if not exist "%aud_dir%" mkdir "%aud_dir%"
if not exist "%zip_dir%" mkdir "%zip_dir%"

echo ===========================================
echo Organizando arquivos da pasta Downloads...
echo ===========================================
echo.

for %%i in ("%origem%\*") do (

    :: 1. IMAGENS
    if /i "%%~xi"==".jpg"  move "%%i" "%img_dir%" >nul
    if /i "%%~xi"==".jpeg" move "%%i" "%img_dir%" >nul
    if /i "%%~xi"==".png"  move "%%i" "%img_dir%" >nul
    if /i "%%~xi"==".gif"  move "%%i" "%img_dir%" >nul
    if /i "%%~xi"==".bmp"  move "%%i" "%img_dir%" >nul
    if /i "%%~xi"==".webp" move "%%i" "%img_dir%" >nul

    :: 2. DOCUMENTOS
    if /i "%%~xi"==".pdf"  move "%%i" "%doc_dir%" >nul
    if /i "%%~xi"==".docx" move "%%i" "%doc_dir%" >nul
    if /i "%%~xi"==".doc"  move "%%i" "%doc_dir%" >nul
    if /i "%%~xi"==".xlsx" move "%%i" "%doc_dir%" >nul
    if /i "%%~xi"==".txt"  move "%%i" "%doc_dir%" >nul
    if /i "%%~xi"==".pptx" move "%%i" "%doc_dir%" >nul

    :: 3. INSTALADORES E EXECUTÁVEIS
    if /i "%%~xi"==".exe"  move "%%i" "%inst_dir%" >nul
    if /i "%%~xi"==".msi"  move "%%i" "%inst_dir%" >nul
    if /i "%%~xi"==".bat"  move "%%i" "%inst_dir%" >nul

    :: 4. VÍDEOS
    if /i "%%~xi"==".mp4"  move "%%i" "%vid_dir%" >nul
    if /i "%%~xi"==".mkv"  move "%%i" "%vid_dir%" >nul
    if /i "%%~xi"==".avi"  move "%%i" "%vid_dir%" >nul
    if /i "%%~xi"==".mov"  move "%%i" "%vid_dir%" >nul

    :: 5. ÁUDIO / MÚSICAS
    if /i "%%~xi"==".mp3"  move "%%i" "%aud_dir%" >nul
    if /i "%%~xi"==".wav"  move "%%i" "%aud_dir%" >nul
    if /i "%%~xi"==".wma"  move "%%i" "%aud_dir%" >nul

    :: 6. COMPACTADOS
    if /i "%%~xi"==".zip"  move "%%i" "%zip_dir%" >nul
    if /i "%%~xi"==".rar"  move "%%i" "%zip_dir%" >nul
    if /i "%%~xi"==".7z"   move "%%i" "%zip_dir%" >nul
)

echo.
echo Arquivos organizados com sucesso!
pause
