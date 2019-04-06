@echo off

%extd% /browseforfolder "Browse for a folder" "c:\"

if "%result%"=="" (exit) else (set folder="%result%")

%extd% /messagebox Result %folder%