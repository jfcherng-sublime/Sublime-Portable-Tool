@echo off

%extd% /getusername

if "%result%"=="" (exit) else (set username="%result%")

%extd% /messagebox "User name" %username%