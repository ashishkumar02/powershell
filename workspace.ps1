##Get the services on the local computer.
get-service
##Get all the services on the remote computer Server64:
get-service -computername Server64

#To retrieve the description of a service use the Win32_Service WMI class:

get-wmiobject win32_service | where-object {$_.Name -eq 'Schedule'} | format-list Name, Description
