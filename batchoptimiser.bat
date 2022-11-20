@echo off 
color 3
:tweaks     
echo                                                      Welcome to  
echo                                                      BATCH-OPTIMIZER
echo.
echo.
echo.

echo                                       [ 1 ] Power plan          [ 3 ] Removing temporary files
echo. 
echo                                       [ 2 ] Error checking      [ 4 ] Disabling background apps 

echo. 
echo                                      { Type close to Exit } 


set /p optimization= 
 
if %optimization% == close exit 
if %optimization% == 1 powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo. 
pause
cls
goto tweaks
if %optimization% == 2 DISM /Online /Cleanup-Image /ScanHealth
pause
cls
goto tweaks
if %optimization% == 3 del /q/f/s %TEMP%\* 
pause
cls
goto tweaks
if %optimization% == 4 Reg Add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications /v GlobalUserDisabled /t REG_DWORD /d 1 /f
pause 
cls
goto tweaks   
cls 
pause 
goto tweaks
