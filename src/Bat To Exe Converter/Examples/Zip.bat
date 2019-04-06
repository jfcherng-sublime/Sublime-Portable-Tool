@echo off

%extd% /browseforfile "Select a file to zip" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /savefiledialog "Save file as" "MyZipfile.zip" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set save="%result%")

%extd% /zip %file% %save%