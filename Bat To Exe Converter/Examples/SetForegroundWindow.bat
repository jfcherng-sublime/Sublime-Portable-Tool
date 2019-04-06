@echo off

%extd% /inputbox "SetForegroundWindow" "Enter the title of the window you would like to bring to the foreground" ""

if "%result%"=="" (exit) else (set window="%result%")

%extd% /setforegroundwindow %window%