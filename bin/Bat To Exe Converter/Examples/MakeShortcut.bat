@echo off

%extd% /getspecialfolder DESKTOPDIRECTORY

if "%result%"=="" (exit) else (set desktopdir=%result%)

%extd% /messagebox  "Desktop shortcut" "This example will create a shortcut 'Shortcut.lnk' to this exe on the Desktop" 1

IF %result% EQU 1  (

	%extd% /makeshortcut "%~f0" "%desktopdir%Shortcut.lnk" "Arg1 Arg2 Arg3" "My Shortcut" "%desktopdir%" "%~f0"

)