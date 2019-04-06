@echo off

%extd% /browseforfile "Choose a file" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /md5 %file%

if "%result%"=="" (exit) else (set md5="%result%")

%extd% /messagebox Result %md5%