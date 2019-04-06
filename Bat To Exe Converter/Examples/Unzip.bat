@echo off

%extd% /browseforfile "Select a ZIP file" "" "ZIP (*.zip)|*.zip"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /browseforfolder "Select a destination folder" "c:\"

if "%result%"=="" (exit) else (set folder="%result%")

%extd% /unzip %file% %folder%
