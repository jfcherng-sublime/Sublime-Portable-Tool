@echo off

%extd% /messagebox "" "This example will only work as a visible exe. Press the cancel button if your exe isn't visible" 1

IF %result% EQU 2 exit

%extd% /maskedinput

if "%result%"=="" (exit) else (set string="%result%")

%extd% /messagebox Result %string%
