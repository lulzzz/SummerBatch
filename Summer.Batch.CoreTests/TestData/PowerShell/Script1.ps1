﻿[CmdletBinding()]
Param(
  [Parameter(Mandatory=$True)]
   [string]$DateTimeNow,
	
   [Parameter(Mandatory=$True)]
   [string]$scriptFile
)

<#
Never use Write-Host as it writes out to Host UI screen. There is no easy way to redirect it, short of writing our own host.
#>

# Enable Verbose messaging...
$VerbosePreference = "Continue"

# Enable Debug messaging...
$DebugPreference = "Continue"

# if you need to trace at statement level...
#Set-PSDebug -Trace 2

#[string]$fileName = ([System.IO.FileInfo]$fileInfo).Name
Write-Output "Executing Script File: $(([System.IO.FileInfo]$fileInfo).Name)"
Write-Output "Input parameters: scriptFile=$scriptFile, DateTimeNow=$DateTimeNow"

<#
If you invoke a console application or a VBScript script that would return something to %ERRORLEVEL%, 
from within Windows PowerShell, you’ll get the response in $LastExitCode.
#>
cmd /c dir c:\windows | Out-Null
Write-Output "'cmd /c dir c:\windows | Out-Null', Exit Code = $LastExitCode"

Write-Verbose -Message "Write-Verbose: Input parameters: -scriptFile $scriptFile -DateTimeNow $DateTimeNow"
Write-Error  -Message "=> My Error message"
Write-Warning "=> My Warning message"
Write-Debug "  => My Debug message"

# user can return exit code as well...
#Exit 0
