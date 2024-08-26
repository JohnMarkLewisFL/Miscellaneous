strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")

Set colSettings = objWMIService.ExecQuery("Select * from Win32_OperatingSystem")
For Each objOperatingSystem in colSettings
    Wscript.Echo "Computer Name: " & objOperatingSystem.CSName
    Wscript.Echo "Operating System: " & objOperatingSystem.Caption
    Wscript.Echo "Version: " & objOperatingSystem.Version
    Wscript.Echo "Manufacturer: " & objOperatingSystem.Manufacturer
    Wscript.Echo "Build Type: " & objOperatingSystem.BuildType
    Wscript.Echo "Registered User: " & objOperatingSystem.RegisteredUser
    Wscript.Echo "Serial Number: " & objOperatingSystem.SerialNumber
    Wscript.Echo "Product ID: " & objOperatingSystem.ProductType
    Wscript.Echo "System Directory: " & objOperatingSystem.SystemDirectory
    Wscript.Echo "Windows Directory: " & objOperatingSystem.WindowsDirectory
    Wscript.Echo "Total Visible Memory: " & Round(objOperatingSystem.TotalVisibleMemorySize / 1048576, 2) & " GB"
    Wscript.Echo "Free Physical Memory: " & Round(objOperatingSystem.FreePhysicalMemory / 1048576, 2) & " GB"
    Wscript.Echo "Total Virtual Memory: " & Round(objOperatingSystem.TotalVirtualMemorySize / 1048576, 2) & " GB"
    Wscript.Echo "Free Virtual Memory: " & Round(objOperatingSystem.FreeVirtualMemory / 1048576, 2) & " GB"
Next

Set colDisks = objWMIService.ExecQuery("Select * from Win32_LogicalDisk Where DriveType = 3")
For Each objDisk in colDisks
    Wscript.Echo "Drive: " & objDisk.DeviceID
    Wscript.Echo "Volume Name: " & objDisk.VolumeName
    Wscript.Echo "File System: " & objDisk.FileSystem
    Wscript.Echo "Total Size: " & Round(objDisk.Size / 1073741824, 2) & " GB"
    Wscript.Echo "Free Space: " & Round(objDisk.FreeSpace / 1073741824, 2) & " GB"
Next