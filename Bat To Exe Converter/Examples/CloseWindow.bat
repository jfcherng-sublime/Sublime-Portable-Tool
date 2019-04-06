@echo off

%extd% /inputbox "CloseWindow example" "Enter the title of the window you would like to close" ""

if "%result%"=="" (exit) else (set window="%result%")

%extd% /closewindow %window%