@ECHO OFF
TITLE Sublime Text Portable Tool
CALL :get_last_arg %*
SET "CURRENT_DIR=%LAST_ARG%"
SET "TEMP_DIR=%CD%"
SET PATH=%TEMP_DIR%;%PATH%
CD /D %CURRENT_DIR%

ECHO.
ECHO       Sublime Text 便攜版工具包 @LOO2K  繁中化／修改：jfcherng     
ECHO ----------------------------------------------------------------------------
ECHO.
ECHO   操作序號：
ECHO   1: 添加 Sublime Text 到系統右鍵選單 (icon_menu.ico)
ECHO   2: 移除 Sublime Text 右鍵選單
ECHO   3: 添加副檔名關聯 (icon_doc.ico, 副檔名列表請存放至同目錄的 ext.txt 檔案中)
ECHO   4: 移除副檔名關聯
ECHO   5: 更換 Sublime Text 的主程式圖示為 icon_program.ico
ECHO   6: 離開
ECHO.
ECHO   注意事項：
ECHO   1. 請將此腳本複製到 Sublime Text 的資料夾
ECHO   2. 確認 Sublime Text 的可執行檔案名為 sublime_text.exe
ECHO   3. 請將需要綁定的副檔名保存到同目錄 ext.txt 檔案中（每行一個副檔名）
ECHO.
ECHO ----------------------------------------------------------------------------


:begin
SET /p u=輸入操作序號並按 Enter 鍵：
IF "%u%" == "1" GOTO regMenu
IF "%u%" == "2" GOTO unregMenu
IF "%u%" == "3" GOTO sublime_text_file
IF "%u%" == "4" GOTO un_sublime_text_file
IF "%u%" == "5" GOTO change_program_icon
IF "%u%" == "6" EXIT
GOTO begin


:regMenu
reg add "HKCR\*\shell\Sublime Text" /ve /d "以 Sublime Text 開啟" /f 
reg add "HKCR\*\shell\Sublime Text" /v "Icon" /d "%cd%\icon_menu.ico" /f
REM reg add "HKCR\*\shell\Sublime Text" /v "Icon" /d "%cd%\sublime_text.exe,0" /f
reg add "HKCR\*\shell\Sublime Text\command" /ve /d "%cd%\sublime_text.exe ""%%1""" /f 
ECHO.
ECHO 已成功添加右鍵選單
ECHO.
GOTO begin


:unregMenu
reg delete "HKCR\*\shell\Sublime Text" /f
ECHO.
ECHO 已成功移除右鍵選單
ECHO.
GOTO begin


:sublime_text_file
reg add "HKCR\sublime_text_file" /ve /d "Sublime Text file" /f
reg add "HKCR\sublime_text_file\DefaultIcon" /ve /d "%cd%\icon_doc.ico" /f
reg add "HKCR\sublime_text_file\shell\open\command" /ve /d "%cd%\sublime_text.exe ""%%1""" /f
FOR /F "eol=;" %%e IN (ext.txt) DO (
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
ECHO 已成功添加副檔名
ECHO.
GOTO begin


:un_sublime_text_file
reg delete "HKCR\sublime_text_file" /f
FOR /F "eol=;" %%e IN (ext.txt) DO (
	REM ECHO %%e
	reg query "HKCR\.%%e" /v "sublime_text_backup" > NUL || reg add "HKCR\.%%e" /ve /f
	FOR /f "skip=2 tokens=1,2,* delims= " %%a IN ('reg query "HKCR\.%%e" /v "sublime_text_backup"') DO (
		reg add "HKCR\.%%e" /ve /d "%%c" /f
		reg delete "HKCR\.%%e" /V "sublime_text_backup" /f
	)
)
ECHO.
ECHO 已成功移除副檔名
ECHO.
GOTO BEGIN


:change_program_icon
ResHacker.exe -addoverwrite "sublime_text.exe", "sublime_text.exe", "icon_program.ico", ICONGROUP, MAINICON, 0
@DEL /F ResHacker.ini
@DEL /F ResHacker.log
REM try to clean icon cache
@ie4uinit.exe -ClearIconCache
@DEL /F /A %USERPROFILE%\AppData\Local\IconCache.db
ECHO.
ECHO 已成功更換主程式圖示
ECHO.
GOTO BEGIN


:get_last_arg
  SET "LAST_ARG=%~1"
  SHIFT
  IF NOT "%~1"=="" GOTO get_last_arg
GOTO :EOF
