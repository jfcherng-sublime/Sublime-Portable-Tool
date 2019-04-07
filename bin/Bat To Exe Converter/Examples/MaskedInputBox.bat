@echo off

%extd% /maskedinputbox "Masked Input Box" "Enter a string in the box below" ""

if "%result%"=="" (exit) else (set string="%result%")

%extd% /messagebox Result %string%
