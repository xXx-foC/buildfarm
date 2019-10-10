$domainMode=Win2012R2
$forestMode=Win2012R2
$domainName=acme.epic
$netbiosName=ACME
$dbpath="C:\Windows\NTDS"
$logpath="C:\Windows\NTDS"
$sysvolPath="C:\Windows\SYSVOL"

Add-WindowsFeature RSAT-ADDS-Tools

install-windowsfeature AD-Domain-Services
Import-Module ADDSDeployment
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath $dbpath -DomainMode $domainMode -DomainName $domainName -DomainNetbiosName $netbiosName -ForestMode $forestMode -InstallDns:$true -LogPath $logpath -NoRebootOnCompletion:$false -SysvolPath $sysvolPath -Force:$true
