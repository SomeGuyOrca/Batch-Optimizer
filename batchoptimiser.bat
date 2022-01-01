@echo off 
echo I would recommned you to create a restore point before starting this script
pause
cls
echo press to enable high performance power plan
pause            
cls
powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
pause
cls

echo press to disable all background apps
pause
cls
Reg Add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications /v GlobalUserDisabled /t REG_DWORD /d 1 /f
pause
cls
pause

echo press to delete all temporary files ( not important files )

pause 

del /q/f/s %TEMP%\*

pause 
echo fix registry corrupt files ( only do if your pc/laptop is really slow )
cls

DISM /Online /Cleanup-Image /ScanHealth
pause
