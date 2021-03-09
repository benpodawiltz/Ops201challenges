#Purpose: Specific System Event Log formatted and save to output.txt files
#Script Name: Opschall09.ps1 
#Ben Podawiltz


function print_error{
Get-EventLog -LogName System -EntryType Error >> C:\Users\Admin\Desktop\errors.txt
}

function last_24{
Get-EventLog -LogName System -After '3/7/2021 20:00:00' >> C:\Users\Admin\Desktop\last_24.txt
}


function id16_print{ 
Get-EventLog -LogName System -InstanceId 16
}


function recent_20 {
Get-EventLog -Logname System -Newest 20
}


function recent_500/format {
Get-EventLog -LogName System -Newest 500 | Format-Table -Wrap
}

#Call Functions
print_error
last_24
id16_print
recent_20
recent_500/format

