@echo off

%extd% /inputbox "MakeToolWindow" "Enter the title of the window you would like change" ""

if "%result%"=="" (exit) else (set window="%result%")

%extd% /maketoolwindow %window%