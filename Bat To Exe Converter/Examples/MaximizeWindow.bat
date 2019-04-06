@echo off

%extd% /inputbox "MaximizeWindow" "Enter the title of the window you would like to maximize" ""

if "%result%"=="" (exit) else (set window="%result%")

%extd% /maximizewindow %window%