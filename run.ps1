[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -URI https://raw.githubusercontent.com/wazehell/vulnerable-AD/master/vulnad.ps1 -OutFile C:/vulnad.ps1

Import-Module C:\vulnad.ps1
Sleep 5
Invoke-VulnAD -UsersLimit 50 -DomainName acme.local

