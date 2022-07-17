@echo off
set /p ip=[TARGET] 
ping %ip% -t -l 1200
pause
