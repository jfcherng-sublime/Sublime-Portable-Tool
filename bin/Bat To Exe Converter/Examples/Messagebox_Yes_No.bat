@echo off

%extd% /messagebox  "" "Yes, No" 4

IF %result% EQU 6 %extd% /messagebox Result Yes

IF %result% EQU 7 %extd% /messagebox Result No