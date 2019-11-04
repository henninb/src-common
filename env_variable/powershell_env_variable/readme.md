# on centos
[packages-microsoft-com-prod]
name=packages-microsoft-com-prod
baseurl=https://packages.microsoft.com/yumrepos/microsoft-rhel7.3-prod
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc

sudo yum install -y powershell

%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe

PS C:\svnfiles\src\cmd\hook_wallpaper_change> Get-ExecutionPolicy
AllSigned
PS C:\svnfiles\src\cmd\hook_wallpaper_change> Set-ExecutionPolicy RemoteSigned
PS C:\svnfiles\src\cmd\hook_wallpaper_change> Get-ExecutionPolicy
RemoteSigned
PS C:\svnfiles\src\cmd\hook_wallpaper_change> Set-ExecutionPolicy RemoteSigned
PS C:\svnfiles\src\cmd\hook_wallpaper_change>
