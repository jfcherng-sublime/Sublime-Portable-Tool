@echo off

%extd% /osversion

if "%result%"=="" (exit) else (set os="%result%")

%extd% /messagebox "Operating system" %os%