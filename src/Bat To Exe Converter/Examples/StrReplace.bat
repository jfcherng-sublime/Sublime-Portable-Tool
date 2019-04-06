@echo off

%extd% /messagebox "StrReplace"  "This example will search for the appearance 'sample' in the string 'a sample string' and replace it with 'replaced'"

%extd% /strreplace "a sample string" "sample" "replaced"

%extd% /messagebox Result "%result%"