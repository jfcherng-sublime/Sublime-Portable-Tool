@ECHO OFF

SET SCRIPT_DIR=%CD%

SET COMPILER=Bat To Exe Converter\Bat_To_Exe_Converter.exe
SET INPUT_BASENAME=Sublime-Text-Portable-Tool
SET DESC=A portable tool for Sublime Text
SET ICON=icon_menu_st.ico
SET VERSION=1.0.7.0
SET GITHUB_REPO=https://github.com/jfcherng/Sublime-Portable-Tool

CD /D src

"%COMPILER%" ^
    /bat "%INPUT_BASENAME%.bat" ^
    /exe "%SCRIPT_DIR%\%INPUT_BASENAME%.exe" ^
    /include "ResourceHacker.exe" ^
    /icon "%ICON%" ^
    /productname "%INPUT_BASENAME%" ^
    /productversion "%VERSION%" ^
    /fileversion "%VERSION%" ^
    /description "%DESC%" ^
    /copyright "%GITHUB_REPO%" ^
    /workdir 0 ^
    /extractdir 1 ^
    /upx ^
    /uac-admin ^
    /overwrite ^
    /deleteonexit

PAUSE >NUL
EXIT
