@echo off

%extd% /getcpuname

if "%result%"=="" (exit) else (set cpuname="%result%")

%extd% /messagebox "CPU name" %cpuname%