@echo off

%extd% /getspecialfolder DESKTOPDIRECTORY

if "%result%"=="" (exit) else (set desktopdir=%result%)

%extd% /messagebox Screenshot "This example will take a screenshot of your desktop and save it as 'Screenshot.bmp'" 1

IF %result% EQU 1  (

	%extd% /screenshot "%desktopdir%Screenshot.bmp"

)