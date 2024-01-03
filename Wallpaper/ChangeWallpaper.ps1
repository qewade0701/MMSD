#Take OwnerShip of the files
TAKEOWN /f C:\Windows\WEB\Wallpaper\Windows\img0.jpg
TAKEOWN /f C:\Windows\Web\4K\Wallpaper\Windows\*.*
#Set permissions for SYSTEM Account
ICACLS C:\Windows\WEB\Wallpaper\Windows\img0.jpg /Grant 'System:(F)'
ICACLS C:\Windows\Web\4K\Wallpaper\Windows\*.* /Grant 'System:(F)'
#Delete the files
Remove-Item C:\Windows\WEB\Wallpaper\Windows\img0.jpg
Remove-Item C:\Windows\Web\4K\Wallpaper\Windows\*.*
#Copy the files
Copy-Item $PSScriptRoot\DefaultRes\img0.jpg C:\Windows\WEB\Wallpaper\Windows\img0.jpg
Copy-Item $PSScriptRoot\4k\*.* C:\Windows\Web\4K\Wallpaper\Windows