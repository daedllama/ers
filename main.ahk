#Requires AutoHotkey v2.0
#singleinstance
#Warn
#HotIf WinExist("Roblox")
#include master_include.ahk

read_hotkeys()

MouseGetPos &xpos, &ypos
CoordMode "Pixel", "Screen"
A_Clipboard := "/e dance7"
SetMouseDelay 1

changer.Show()

#suspendexempt
+F1:: suspend
^F1:: reload
^+F12:: exitapp
#suspendexempt false
