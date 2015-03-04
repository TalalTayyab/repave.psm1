Import-Module "$(Split-Path $MyInvocation.MyCommand.Path)\repave.psm1" -Force
Invoke-Repave {

    # Windows Explorer
    Set-AdvancedWindowsExplorerOptions

    # Git
    Install-Git

   
    
    
   
   
       
    # Utils
    Install-ChocolateyPackage fiddler4
    Install-ChocolateyPackage sysinternals
    Install-ChocolateyPackage windirstat
    Install-ChocolateyPackage 7zip
    Install-ChocolateyPackage AdobeReader
    Install-ChocolateyPackage notepadplusplus
    Install-ChocolateyPackage lockhunter
    Install-ChocolateyPackage google-chrome-x64
    Install-ChocolateyPackage firefox
    Install-ChocolateyPackage diffmerge
    Install-ChocolateyPackage dotpeek
   
   
	
	
  
    
    # Final warnings
    if ($update -eq "false") {
        Write-Warning "Check device manager for missing drivers; check graphics drivers; check laptop special buttons work`r`n"
        Write-Warning "Install printers"
        Write-Warning "Configure power options`r`n"
        Write-Warning "Run Windows Update`r`n"
    }
}
