@echo off

%extd% /inputbox "" "Enter the text you want to be spoken in the box below" ""

if "%result%"=="" (exit) else (set string="%result%")

%extd% /speak %string% 2