@echo off

%extd% /messagebox "" "Try again or Cancel" 5

IF %result% EQU 4 %extd% /messagebox Result "Try again"

IF %result% EQU 2 %extd% /messagebox Result "Cancel"