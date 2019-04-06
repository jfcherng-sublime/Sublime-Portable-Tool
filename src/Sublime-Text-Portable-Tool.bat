@ECHO OFF
TITLE Sublime Text Portable Tool
SET PATH=%b2eincfilepath%;%PATH%

SET VERSION=v1.0.6
ECHO.
ECHO Sublime Merge Portable Tool %VERSION% by Jack Cherng ^<jfcherng@gmail.com^>
ECHO ------------------------------------------------------------------------------
ECHO.
ECHO   Operations:
ECHO   1: Add "Open with Sublime Text" to context menu (icon_menu_st.ico)
ECHO   2: Remove "Open with Sublime Text" from context menu
ECHO   3: Add file associations (ext_st.txt, icon_doc_st.ico)
ECHO   4: Remove file associations
ECHO   5: Change the icon of sublime_text.exe (icon_program_st.ico)
ECHO   6: Exit
ECHO.
ECHO   Some notes:
ECHO   1. Put this .exe file with sublime_text.exe.
ECHO   2. Write file exetensions in ext_st.txt line by line
ECHO.
ECHO ------------------------------------------------------------------------------
ECHO.


:check_sublime_text_exist
IF EXIST "sublime_text.exe" (
    GOTO begin
) ELSE (
    ECHO I cannot find your sublime_text.exe... :/
    PAUSE >NUL
    EXIT
)


:begin
SET /p u="What are you going to do? "
IF "%u%" == "1" GOTO regMenu
IF "%u%" == "2" GOTO unregMenu
IF "%u%" == "3" GOTO sublime_text_file
IF "%u%" == "4" GOTO un_sublime_text_file
IF "%u%" == "5" GOTO change_program_icon
IF "%u%" == "6" EXIT
GOTO begin


:regMenu
REM for files
reg add "HKCR\*\shell\Sublime Text" /ve /d "Open with Sublime Text" /f
reg add "HKCR\*\shell\Sublime Text" /v "Icon" /d "%CD%\icon_menu_st.ico" /f
reg add "HKCR\*\shell\Sublime Text\command" /ve /d "%CD%\subl.exe ""%%1""" /f
REM for directories
reg add "HKCR\Directory\shell\Sublime Text" /ve /d "Open with Sublime Text" /f
reg add "HKCR\Directory\shell\Sublime Text" /v "Icon" /d "%CD%\icon_menu_st.ico" /f
reg add "HKCR\Directory\shell\Sublime Text\command" /ve /d "%CD%\subl.exe ""%%1""" /f
REM for directories background
REM reg add "HKCR\Directory\Background\shell\Sublime Text" /ve /d "Open with Sublime Text" /f
REM reg add "HKCR\Directory\Background\shell\Sublime Text" /v "Icon" /d "%CD%\icon_menu_st.ico" /f
REM reg add "HKCR\Directory\Background\shell\Sublime Text\command" /ve /d "%CD%\subl.exe ""%%1""" /f
ECHO.
ECHO Done: add "Open with Sublime Text" to context menu
ECHO.
GOTO begin


:unregMenu
REM for files
reg delete "HKCR\*\shell\Sublime Text" /f
REM for directories
reg delete "HKCR\Directory\shell\Sublime Text" /f
REM for directories background
reg delete "HKCR\Directory\Background\shell\Sublime Text" /f
ECHO.
ECHO Done: remove "Open with Sublime Text" from context menu
ECHO.
GOTO begin


:sublime_text_file
reg add "HKCR\sublime_text_file" /ve /d "Sublime Text file" /f
reg add "HKCR\sublime_text_file\DefaultIcon" /ve /d "%cd%\icon_doc_st.ico" /f
reg add "HKCR\sublime_text_file\shell\open\command" /ve /d "%cd%\sublime_text.exe ""%%1""" /f
FOR /F "eol=;" %%e IN (ext_st.txt) DO (
	REM ECHO %%e
	reg query "HKCR\.%%e" > NUL || reg add "HKCR\.%%e" /f
	FOR /f "skip=2 tokens=1,2,* delims= " %%a IN ('reg query "HKCR\.%%e" /ve') DO (
		IF NOT "%%c" == "sublime_text_file" (
			reg add "HKCR\.%%e" /v "sublime_text_backup" /d "%%c" /f
		)
	)
	assoc .%%e=sublime_text_file
)
ECHO.
ECHO Done: add file associations
ECHO.
GOTO begin


:un_sublime_text_file
reg delete "HKCR\sublime_text_file" /f
FOR /F "eol=;" %%e IN (ext_st.txt) DO (
	REM ECHO %%e
	reg query "HKCR\.%%e" /v "sublime_text_backup" > NUL || reg add "HKCR\.%%e" /ve /f
	FOR /f "skip=2 tokens=1,2,* delims= " %%a IN ('reg query "HKCR\.%%e" /v "sublime_text_backup"') DO (
		reg add "HKCR\.%%e" /ve /d "%%c" /f
		reg delete "HKCR\.%%e" /V "sublime_text_backup" /f
	)
)
ECHO.
ECHO Done: remove file associations
ECHO.
GOTO begin


:change_program_icon
ResourceHacker.exe -addoverwrite "sublime_text.exe", "sublime_text.exe", "icon_program_st.ico", ICONGROUP, MAINICON, 0
REM try to clean icon cache
ie4uinit.exe -ClearIconCache 2>NUL
DEL /F /A %USERPROFILE%\AppData\Local\IconCache.db 2>NUL
ECHO.
ECHO Done: change the icon of sublime_text.exe
ECHO.
GOTO begin
