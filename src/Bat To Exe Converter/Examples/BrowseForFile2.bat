@echo off

%extd% /browseforfile "Browse for a file" "default.bat" "EXE (*.exe)|*.exe|BAT (*.bat)|*.bat" "1"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /messagebox Result %file%