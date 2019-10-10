net stop tiledatamodelsvc
if exist c:\Temp\deployunattend.xml (
  c:\windows\system32\sysprep\sysprep.exe /generalize /oobe /reboot /unattend:c:\Temp\deployunattend.xml
) else (
  echo Unable to find deployunattend.xml > c:\temp\sysprep.log 
)
