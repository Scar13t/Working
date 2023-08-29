
; AutoHotkey Script for Main GUI (v7.1)

; Create Logs folder if it doesn't exist
IfNotExist, Logs
    FileCreateDir, Logs

; Initialize the main GUI
Gui, Main:Add, Tab, , Applications|Dates|Settings|Logs

; Add Log Window in Logs Tab
Gui, Main:Tab, Logs
Gui, Main:Add, Edit, ReadOnly vLogWindow r20 w500

; Check if tab-specific scripts exist and run them
IfExist, Applications_Tab_Script.ahk
    Run, Applications_Tab_Script.ahk
Else
    FileAppend, "Could not find Applications_Tab_Script.ahk in the current directory.`n", Logs/Main_Log.txt

IfExist, Dates_Tab_Script.ahk
    Run, Dates_Tab_Script.ahk
Else
    FileAppend, "Could not find Dates_Tab_Script.ahk in the current directory.`n", Logs/Main_Log.txt

; Initialize other tabs (Settings, Logs) here
; ...

Gui, Main:Show, , AutoHotkey Script for Main Management
