## This first command will set your interface DNS Address to the DC Address. ##
Set-DnsClientServerAddress -InterfaceAlias 'Ethernet' -ServerAddresses 1.1.1.1

## This variables below will use the information declared as reference for the following commnad. ##
$domain='domain.com'
$userName='domain\user'
$password='YourPassword' | ConvertTo-SecureString -AsPlainText -Force
$credential=New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $userName, $password


Add-Computer -ComputerName (hostname) -DomainName $domain -Credential $credential -Restart
