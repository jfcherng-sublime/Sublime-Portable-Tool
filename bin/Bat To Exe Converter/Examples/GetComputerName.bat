@echo off

%extd% /getcomputername

if "%result%"=="" (exit) else (set computername="%result%")

%extd% /messagebox "Computer name" %computername%