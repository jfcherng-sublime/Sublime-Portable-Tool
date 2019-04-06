@echo off

%extd% /inputbox "MinimizeWindow" "Enter the title of the window you would like to minimize" ""

if "%result%"=="" (exit) else (set window="%result%")

%extd% /minimizewindow %window%