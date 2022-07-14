@echo off
set /p ip=[TARGET] 
ping %ip% -t -l 65550
pause
