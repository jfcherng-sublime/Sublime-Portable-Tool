@echo off

%extd% /getsystemlanguage

if "%result%"=="" (exit) else (set syslang="%result%")

%extd% /messagebox "System Language" %syslang%