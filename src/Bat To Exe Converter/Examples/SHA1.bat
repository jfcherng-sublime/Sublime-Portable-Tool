@echo off

%extd% /browseforfile "Choose a file" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /sha1 %file%

if "%result%"=="" (exit) else (set sha1="%result%")

%extd% /messagebox Result %sha1%