#Author:	ben_podawiltz
#Date:		3.15.21
#Purpose:	Automation of OS configuration for OS deployment
 

#Enable Firewall Rule to allow file and printer sharing
Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True

#Allow ICMPv4 protocol inbound on new deployment
netsh advfirewall firewall add rule name= "All ICMP V4" protocol=icmpv4:any,any dir=in action=allow

#Remove bloatware from OS deployment
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

#Enable RDP 
Netsh advfirewall firewall set rule group=”remote desktop” new enable=yes

#Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

#Disable Smbv1 
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
