# Using here string to display Menu 
$menu = @" 
Menu
--------------------
Select your options
1.- Ambiente CIE Lync 2013, Exchange 2013, WAC, Persistant Chat
2.- SharePoint
3
4
5
6
7
8
0 : Press 0 to Exit

"@

write-host $menu
Function Pause ($Message = "Press any* key to continue . . .Well I don't mean all :) ") {
    If ($psISE) {
        # The "ReadKey" functionality is not supported in Windows PowerShell ISE.

        $Shell = New-Object -ComObject "WScript.Shell"
        $Button = $Shell.Popup("Click OK to continue.", 0, "Script Paused", 0)

        Return
    }

    Write-Host -NoNewline $Message
    
    # Secret codes :) you don't want to continue when press shift key alt etc etc
    
    $Ignore =
        16,  # Shift (left or right)
        17,  # Ctrl (left or right)
        18,  # Alt (left or right)
        20,  # Caps lock
        91,  # Windows key (left)
        92,  # Windows key (right)
        93,  # Menu key
        144, # Num lock
        145, # Scroll lock
        166, # Back
        167, # Forward
        168, # Refresh
        169, # Stop
        170, # Search
        171, # Favorites
        172, # Start/Home
        173, # Mute
        174, # Volume Down
        175, # Volume Up
        176, # Next Track
        177, # Previous Track
        178, # Stop Media
        179, # Play
        180, # Mail
        181, # Select Media
        182, # Application 1
        183  # Application 2

    While ($KeyInfo.VirtualKeyCode -Eq $Null -Or $Ignore -Contains $KeyInfo.VirtualKeyCode) {
        $KeyInfo = $Host.UI.RawUI.ReadKey("NoEcho, IncludeKeyDown")
    }

    Write-Host
}


# using do while loop to do switch case annoyance 

do {

if($a)
 {
    clear-variable a
  }
$a = read-host "Select your option"

switch ($a) 
    { 
       
        1 {write-host -ForegroundColor RED "The color is red."; Pause;} 
        2 {write-host -ForegroundColor DARKBLUE "The color is blue."; Pause;} 
        3 {write-host -ForegroundColor GREEN "The color is green."; Pause;} 
        4 {write-host -ForegroundColor YELLOW "The color is yellow."; Pause;} 
        5 {write-host -ForegroundColor DarkYellow "The color is orange."; Pause;} 
        6 {write-host -ForegroundColor Magenta "The color is purple."; Pause;} 
        7 {write-host -ForegroundColor Cyan "The color is pink."; Pause;}
        8 {write-host -ForegroundColor Gray "The color is brown."; Pause;} 
        0 {write-host "Exiting..."; Exit;}
  default {"The color could not be determined."; Pause;}
     }
    }
     while(!($a -eq 'null'))