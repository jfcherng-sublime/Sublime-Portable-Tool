@echo off

%extd% /inputbox "ShowWindow" "Enter the title of the hidden window you would like to show again" ""

if "%result%"=="" (exit) else (set window="%result%")

%extd% /showwindow %window%