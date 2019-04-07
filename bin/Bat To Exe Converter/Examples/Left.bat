@echo off

%extd% /messagebox "Left" "This example will extract a string with a length of 3 characters from the left of 'String'"

%extd% /left "String" 3

if "%result%"=="" (exit) else (set string="%result%")

%extd% /messagebox Result %string%