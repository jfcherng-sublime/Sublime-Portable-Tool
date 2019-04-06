@echo off

%extd% /inputbox "HideWindow" "Enter the title of the window you would like to hide" ""

if "%result%"=="" (exit) else (set window="%result%")

%extd% /hidewindow %window%