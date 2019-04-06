@echo off

%extd% /messagebox "Right" "This example will extract a string with a length of 3 characters from the right of 'String'"

%extd% /right "String" 3

if "%result%"=="" (exit) else (set string="%result%")

%extd% /messagebox Result %string%