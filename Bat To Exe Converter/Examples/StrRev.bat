@echo off

%extd% /inputbox "StrRev" "Enter a string in the box below" ""

if "%result%"=="" (exit) else (set string="%result%")

%extd% /strrev %string%

%extd% /messagebox Result "%result%"