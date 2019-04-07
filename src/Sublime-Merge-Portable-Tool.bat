@ECHO OFF
TITLE Sublime Merge Portable Tool
SET PATH=%b2eincfilepath%;%PATH%

SET VERSION=v1.1.1

ECHO Sublime Merge Portable Tool %VERSION% by Jack Cherng ^<jfcherng@gmail.com^>
ECHO ------------------------------------------------------------------------------
ECHO.
ECHO   Operations:
ECHO   1: Add "Open with Sublime Merge" to context menu (icon_menu_sm.ico)
ECHO   2: Remove "Open with Sublime Merge" from context menu
ECHO   5: Change the icon of sublime_merge.exe (icon_program_sm.ico)
ECHO   6: Exit
ECHO.
ECHO   Some notes:
ECHO   1. Put this .exe file with sublime_merge.exe.
ECHO.
ECHO ------------------------------------------------------------------------------
ECHO.


:check_sublime_merge_exist
IF EXIST "sublime_merge.exe" (
    GOTO begin
) ELSE (
    ECHO I cannot find your sublime_merge.exe... :/
    PAUSE >NUL
    EXIT
)


:begin
SET /p u="What are you going to do? "
IF "%u%" == "1" GOTO regMenu
IF "%u%" == "2" GOTO unregMenu
IF "%u%" == "5" GOTO change_program_icon
IF "%u%" == "6" EXIT
GOTO begin


:regMenu
:: for directories
reg add "HKCR\Directory\shell\Sublime Merge" /ve /d "Open with Sublime Merge" /f
reg add "HKCR\Directory\shell\Sublime Merge" /v "Icon" /d "%CD%\icon_menu_sm.ico" /f
reg add "HKCR\Directory\shell\Sublime Merge\command" /ve /d "%CD%\smerge.exe ""%%1""" /f
:: for directories background
reg add "HKCR\Directory\Background\shell\Sublime Merge" /ve /d "Open with Sublime Merge" /f
reg add "HKCR\Directory\Background\shell\Sublime Merge" /v "Icon" /d "%CD%\icon_menu_sm.ico" /f
reg add "HKCR\Directory\Background\shell\Sublime Merge\command" /ve /d "%CD%\smerge.exe ""%%V""" /f
ECHO.
ECHO Done: add "Open with Sublime Merge" to context menu
ECHO.
GOTO begin


:unregMenu
:: for directories
reg delete "HKCR\Directory\shell\Sublime Merge" /f
:: for directories background
reg delete "HKCR\Directory\Background\shell\Sublime Merge" /f
ECHO.
ECHO Done: remove "Open with Sublime Merge" from context menu
ECHO.
GOTO begin


:change_program_icon
rcedit.exe "sublime_merge.exe" --set-icon "icon_program_sm.ico"
:: try to clean icon cache
ie4uinit.exe -ClearIconCache 2>NUL
DEL /F /A %USERPROFILE%\AppData\Local\IconCache.db 2>NUL
ECHO.
ECHO Done: change the icon of sublime_merge.exe
ECHO.
GOTO begin
