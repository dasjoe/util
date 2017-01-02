' fix-hidpi.vbs
'
' Copyright (c) 2017 Hajo Möller
'
' This code is subject to MIT License,
' https://raw.githubusercontent.com/dasjoe/util/master/LICENSE
'
' Fixes blurry fonts when using 125% DPI scaling in Windows 10 by falling back
' to Windows 8 behavior

Set oShell = CreateObject("Wscript.Shell")

oShell.RegWrite "HKCU\Control Panel\Desktop\DpiScalingVer", &H00001018, _
                "REG_DWORD"
oShell.RegWrite "HKCU\Control Panel\Desktop\Win8DpiScaling", &H00000001, _
                "REG_DWORD"
oShell.RegWrite "HKCU\Control Panel\Desktop\LogPixels", &H00000078, _
                "REG_DWORD"