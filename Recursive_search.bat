#This script will recursively search a folder and get any file older than the specified date.  
#It will then output the results to a file in .csv format. 
#useage:  oldfiles.ps1 -a <age> -d <directory to examine> -f <output file>  
 
Param( 
    [alias("f")] 
    $outfile, 
    [alias("a")] 
    $maxage, 
    [alias("d")] 
    $dir) 
 
#If a parameter was not specified, set a defualt 
if (!($dir)) {$dir = "."} 
if (!($outfile)) {$outfile = "oldfiles.csv"} 
if (!($maxage)) {$maxage = 30} 
 
Write-host "Compiling list, this could take a while." 
$files = get-childitem -recurse $dir 
"File Name `t Age in Days" | out-file $outfile 
write-host "starting" 
foreach ($file in $files) { 
   $time = ((Get-Date) - $file.CreationTime).Days 
   if ($time -gt $maxage -and $file.PSiSContainer -ne $True) {"$($file.FullName) `t $time" | out-file -Append $outfile}  
   } 
Write-Host "done"