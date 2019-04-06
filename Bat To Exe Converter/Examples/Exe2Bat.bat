@echo off

%extd% /browseforfile "Browse for a file" "" "EXE (*.exe)|*.exe"

if "%result%"=="" (exit) else (set file="%result%")

%file% -b2edecompile