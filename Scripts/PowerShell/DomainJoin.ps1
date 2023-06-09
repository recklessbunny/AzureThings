Set-DnsClientServerAddress -InterfaceAlias 'Ethernet' -ServerAddresses 10.1.4

$domain='oftp.local'
$userName='oftp\lekkersap'
$password='Lekk@.0102##$$' | ConvertTo-SecureString -AsPlainText -Force
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $userName, $password

Add-Computer -ComputerName (hostname) -DomainName $domain -Credential $credential -Restart