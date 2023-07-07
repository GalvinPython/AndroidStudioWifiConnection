<#
AndroidStudioWifiConnection.ps1 by GalvinPython, Version 1.0, 7th June 2023
In some Android Studio IDEs, some devices fail to connect over Wifi.
However, it is possible by using commands.
Commands taken from: https://stackoverflow.com/questions/70905560/android-studio-bumblebee-pair-wifi-not-working
#>

# Program starts here
Write-Host "BEFORE CONTINUING, ENSURE YOU HAVE THE 'Pair using paring code' SCREEN OPEN IN ANDROID STUDIO!`n"
Write-Host

Set-Location -Path "$env:LOCALAPPDATA\Android\sdk\platform-tools"

Write-Host "Now open up the pairing code screen on your phone (Under wireless debugging), and enter the information found on the popup"
$ip = Read-Host "Enter IP Address (Not the port, this'll change later)"
$port = Read-Host "Enter Port number"
$address = "${ip}:$port"
./adb pair $address

Write-Host "Now close the popup and type in the port number found under 'IP address and port'"
$port = Read-Host "Enter Port number"
./adb connect $address

Write-Host "And you should now be connected!"
Read-Host "Hit ENTER to continue..."
