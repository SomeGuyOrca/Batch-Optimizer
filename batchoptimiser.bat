@echo off
start README.md
echo open this file as an admin if you have not, if you did continue
pause
cls
echo PLEASE READ THE 'MUSTREAD.MD' FILE BEFORE CONTINUING
pause
cls
:tweaks
echo This command will enable ultimate performance (Find more about it here bit.ly/3Ol8U8W) 
pause
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
pause
cls 
echo This command will disable background apps (not all of them some main ones will remain)
Reg Add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications /v GlobalUserDisabled /t REG_DWORD /d 1 /f
pause
cls
echo This command will delete temporary files (Unneeded files)
del /q/f/s %TEMP%\*
pause
cls
echo This command will check and fix errors in your hard disk (This may take a few minutes to finish)
DISM /Online /Cleanup-Image /RestoreHealth
pause
cls
set /p close= All optimisations have been done. Type close to exit
if %close%== close exit
if not %close%== close exit 
