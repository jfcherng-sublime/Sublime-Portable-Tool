@echo off

%extd% /browseforfile "Browse for a file" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /findexecutable %file%

if "%result%"==""  (

	%extd% /messagebox "" "Associated executable not found"
	exit

)

%extd% /messagebox Result "%result%"

