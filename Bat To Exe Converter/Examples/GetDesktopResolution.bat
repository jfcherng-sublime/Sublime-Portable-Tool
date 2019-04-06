@echo off

%extd% /getdesktopwidth

set width=%result%

%extd% /getdesktopheight

set height=%result%

%extd% /messagebox "Desktop resolution" "width=%width% height=%height%"