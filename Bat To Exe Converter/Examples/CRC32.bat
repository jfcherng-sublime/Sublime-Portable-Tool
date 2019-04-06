@echo off

%extd% /browseforfile "Choose a file" "" "All Files (*.*)|*.*"

if "%result%"=="" (exit) else (set file="%result%")

%extd% /crc32 %file%

if "%result%"=="" (exit) else (set crc32="%result%")

%extd% /messagebox Result %crc32%