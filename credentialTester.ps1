# This script takes a filename as an argument containing a list of email addresses and passwords and
# searches active directory for each address to determine if the account exists
# If an account is found, the script attempts to authenticate with the username and password,
# if valid credentials are found, then the username of the account is printed to stdout
#LIST FORMAT: USER@DOMAIN.COM:PASSWORD
#USERNAMES MUST BE IN EMAIL FORMAT
#
#        USAGE: ./credentialTester.ps1 ./file.txt

$filename = $args[0]
$ErrorActionPreference = 'SilentlyContinue'
foreach($line in Get-Content $filename) {
    
    if($line -match $regex){
        $addr = $line.split('@')
		
   
		if(get-aduser $addr[0]) {
			$username = $addr.split('@')[0] #split first half of email (username)
      $password = $line.split(':')[-1] #split last field of line (password)
      $CurrentDomain = "LDAP://" + ([ADSI]"").distinguishedName #grab domain name from currently authenticated account             
      $domain = New-Object System.DirectoryServices.DirectoryEntry($CurrentDomain,$username,$password)

             if ($domain.name -eq $null) #bad creds
             {
                #write-host "No Dice"
               
             }
             else
             {
                #echo "successful authentication"
                echo $username
             }
                
		}
    }
}
