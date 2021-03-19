#Author:	 Ben Podawiltz
#Date:		 3.18.21
#Revision:
#Purpose: 	Write a powershell script that returns the IPv4 address of the computer. 
#		 Use Select-String cmdlet to only return the IPv4 address string and no other extraneous information
 

#Variables
$IP = ipconfig /all
$rpt = 'C:\Users\Admin\Desktop\network_report.txt'

#Function

function get_report{

$IP | Select-String -Pattern 'IPv4' > $rpt


}
#Remove-Item $rpt --Could not get this command to remove file
get_report
  

#End

