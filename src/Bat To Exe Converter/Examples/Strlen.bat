@echo off

%extd% /inputbox "Strlen" "Enter a string to calculate its length" ""

if "%result%"=="" (exit) else (set string="%result%")

%extd% /strlen %string%

%extd% /messagebox Result "%result%"