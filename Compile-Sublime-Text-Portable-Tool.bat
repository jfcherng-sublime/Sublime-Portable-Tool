@ECHO OFF

SET SCRIPT_DIR=%CD%

SET INPUT_BASENAME=Sublime-Text-Portable-Tool
SET DESC=A portable tool for Sublime Text
SET ICON=icon_menu_st.ico
SET AUTHOR=Jack Cherng ^<jfcherng@gmail.com^>
SET GITHUB_REPO=https://github.com/jfcherng/Sublime-Portable-Tool
SET VERSION_TMP_FILE=version_st.log

CD /D src

:: get the version number from the .bat file
"%SCRIPT_DIR%\bin\rg.exe" ^
    --only-matching ^
    --no-line-number ^
    --regexp "v[0-9]+\.[0-9]+\.[0-9]+" ^
    "%INPUT_BASENAME%.bat" ^
    > %VERSION_TMP_FILE%

SET /P VERSION= < %VERSION_TMP_FILE%
:: strip leading "v" and append ".0"
SET VERSION=%VERSION:~1%.0

ECHO Version: %VERSION%

"%SCRIPT_DIR%\bin\Bat To Exe Converter\Bat_To_Exe_Converter.exe" ^
    /bat "%INPUT_BASENAME%.bat" ^
    /exe "%SCRIPT_DIR%\%INPUT_BASENAME%.exe" ^
    /include "ResourceHacker.exe" ^
    /icon "%ICON%" ^
    /productname "%INPUT_BASENAME%" ^
    /productversion "%VERSION%" ^
    /fileversion "%VERSION%" ^
    /description "%DESC%" ^
    /copyright "%AUTHOR% %GITHUB_REPO%" ^
    /workdir 0 ^
    /extractdir 1 ^
    /upx ^
    /uac-admin ^
    /overwrite ^
    /deleteonexit

DEL /F /A %VERSION_TMP_FILE% 2>NUL

PAUSE
EXIT
