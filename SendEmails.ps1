$numcorreos = Read-Host "Cuandos email quieres enviar?"
#$PSEmailServer = "tim-com-mx0e.mail.protection.outlook.com"
#$securepassword = ConvertTo-SecureString -string "Mispreciosashermosas" -AsPlainText -Force 
#$cred = new-object System.Management.Automation.PSCredential ("gilbertovm@ti-m.com.mx", $securepassword)

for ($i = 0; $i -lt $numcorreos; $i++)
{ 
    Send-MailMessage -From "gilbertovm@ti-m.com.mx" -To "tim.microsoft@senado.gob.mx" -Subject "Test $i" -Body "Email número $i" -SmtpServer 192.168.11.33 -Verbose
}
$numcorreos = $null