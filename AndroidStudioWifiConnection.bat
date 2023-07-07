@REM AndroidStudioWifiConnection.bat by GalvinPython, Version 1.0, 5th June 2023
@REM In some Android Studio IDEs, some devices fail to connect over Wifi.
@REM However, it is possible by using commands
@REM Commands taken from:
@REM https://stackoverflow.com/questions/70905560/android-studio-bumblebee-pair-wifi-not-working

@echo off
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%

@REM Program starts here
echo BEFORE CONTINUING, ENSURE YOU HAVE THE 'Pair using paring code' SCREEN OPEN IN ANDROID STUDIO!%NL%
echo.
cd /d %LOCALAPPDATA%\Android\sdk\platform-tools

echo Now open up the pairing code screen on your phone (Under wireless debugging), and enter the information found on the popup
set /p "ip=Enter IP Address (Not the port, this'll change later): "
set /p "port=Enter Port number: "
adb pair %ip%:%port%

echo Now close the popup and type in the port number found under 'IP address and port'
set /p "port=Enter Port number: "
adb connect %ip%:%port%

echo And you should now be connected!
set /p DUMMY=Hit ENTER to continue...