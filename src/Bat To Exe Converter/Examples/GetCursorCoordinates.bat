@echo off

%extd% /getcursorposx

set x=%result%

%extd% /getcursorposy

set y=%result%

%extd% /messagebox "Cursor coordinates" "X=%x% Y=%y%"