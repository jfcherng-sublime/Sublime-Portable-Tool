@echo off

%extd% /getuserlanguage

if "%result%"=="" (exit) else (set userlang="%result%")

%extd% /messagebox "User Language" %userlang%