$ipStart = "192.168.20."
Clear-Host
write-host "`rScanning for machines`r"

 for ($x=0; $x -le 254;$x++)
    {    
    $ipNew = $ipStart+$x
    write-host "Scanning $ipNew"
    if (Test-Connection -ComputerName $ipNew -count 1 -quiet)
        {   
            write-host "$ipNew`r" -foreground Green
        } else
        {
            write-host "None`r" -foreground Red
        }
    }

