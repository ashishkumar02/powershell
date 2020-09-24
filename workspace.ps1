Invoke-Command -ComputerName apprwidc121 -Credential $cred -ScriptBlock`
{$fqdn=(Get-WmiObject win32_computersystem).DNSHostName+"."+(Get-WmiObject win32_computersystem).Domain;`
get-childitem -Path cert:\localmachine\my -Recurse | Where-Object {$_.Subject -like "$fdqn"}}
# wmic /namespace:\\root\cimv2\TerminalServices PATH Win32_TSGeneralSetting Set SSLCertificateSHA1Hash=$thumb}
