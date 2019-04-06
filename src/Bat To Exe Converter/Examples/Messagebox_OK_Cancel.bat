@echo off

%extd% /messagebox "" "OK, Cancel" 1

IF %result% EQU 1 %extd% /messagebox Result Ok

IF %result% EQU 2 %extd% /messagebox Result Cancel