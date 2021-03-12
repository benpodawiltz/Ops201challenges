#Script name: opschall10.ps1
#Author: Ben Podawiltz
#Date: 3.11.21
#Purpose: analyze, initialize, and terminate processes using Powershell commands


#MAIN
echo "Printing highest CPU time consumption..."

Get-Process | Sort-Object -Property cpu -Descending #Print to  the terminal screen all active processes ordered by highest CPU time consumption

echo "Printing Process ID Numbers High to Low...." 

Get-Process | Sort-Object -Property id  -Descending #Print to the terminal screen all active processes ordered by highest Process Identification Number at the top

echo "Printing top 5 active processes...."

Get-Process | Sort-Object -Property WS | Select-Object -First 5 # Print to the terminal screen top 5 active processes ordered by hihgest Working Set (WS(K)) at the top

echo "Running Explorer....."

Start-Process -FilePath iexplore.exe https://owasp.org/www-project-top-ten #Start the process Internet Explorer (iexplore.exe) and have it open [https address]

#Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten

for ($rpt = 1 ; $rpt -le 10 ; $rpt++){

    Start-Process -FilePath iexplore.exe https://owasp.org/www-project-top-ten

}
#

Stop-Process -Name explorer # Close all Internet Explorer Windows

Stop-Process -Id 4936 #Kill a process by its Process Id Number. Choose a process whose termination won't destablize the system.

#END