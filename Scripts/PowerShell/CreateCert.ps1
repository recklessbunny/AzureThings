## First Part ##

$cert = New-SelfSignedCertificate -Type Custom -KeySpec Signature `
-Subject “CN=AzureRootCert” -KeyExportPolicy Exportable `
-HashAlgorithm sha256 -KeyLength 2048 `
-CertStoreLocation “Cert:CurrentUserMy” -KeyUsageProperty Sign -KeyUsage CertSign

## Second Part ##

New-SelfSignedCertificate -Type Custom -DnsName P2SChildCert -KeySpec Signature `
-Subject “CN=AzureChildCert” -KeyExportPolicy Exportable `
-HashAlgorithm sha256 -KeyLength 2048 `
-CertStoreLocation “Cert:CurrentUserMy” `
-NotAfter (Get-Date).AddYears(6)`
-Signer $cert -TextExtension @(“2.5.29.37={text}1.3.6.1.5.5.7.3.2”)
