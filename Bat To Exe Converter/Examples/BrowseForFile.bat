@echo off

%extd% /browseforfile "Browse for a file" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /messagebox Result %file%