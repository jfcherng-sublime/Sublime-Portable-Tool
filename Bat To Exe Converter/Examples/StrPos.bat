@echo off

%extd% /messagebox "StrPos" "This example will search for the appearance 'sample' in the string 'a sample string'"

%extd% /strpos "a sample string" "sample"

%extd% /messagebox Result "Found on position: %result%"