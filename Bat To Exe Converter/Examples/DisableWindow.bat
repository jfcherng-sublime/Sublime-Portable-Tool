@echo off

%extd% /inputbox "DisableWindow" "Enter the title of the window you would like to disable" ""

if "%result%"=="" (exit) else (set window="%result%")

%extd% /disablewindow %window%