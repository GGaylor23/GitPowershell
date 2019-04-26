#Import the CSV file

$csvfile = Import-CSV C:\MSFT-GeGayl\Powershell\Scripts\Contacts.csv

#Loop through CSV file

## Validate that cmdlets are available (verifies EMS/remoting, and RBAC)
## Create Contact
## Include error handling, write to console and log (results.log)

foreach ($line in $csvfile) {

New-MailContact -Name $line.name -ExternalEmailAddress $line.ExternalEmailAddress
}
