#Requires AutoHotkey v2.0
#SingleInstance
#include ../master_include.ahk
memory := "store.ini"

raw_hotkeys() => IniRead(memory, "hotkey_vars")

; Initialize an empty object to hold the parsed hotkeys
hotkey_array := map()

read_hotkeys(*){
for line in StrSplit(raw_hotkeys(), "`n", "`r") {
    parts := StrSplit(line, "=")
    if (parts.Length == 2) {
        hotkey_array[parts[1]] := parts[2]
    }
}
}

read_hotkeys()

/*
;? uncomment when using
if  WinExist("Roblox")  {
    winActivate
    }
else   {
    msgbox "Roblox is not running `n is it open in another desktop?"
    exitapp  
    }
*/

;! change form code to roblox when not debugging
safetycheck(*){
    if  WinExist("Code")  {
        return
    }
        else {
        exitapp
        }
}  

/*
this checks if roblox is fullscreen
if roblox is fullscreen it simply preses f11 removing it 
this is mainly usefull for automatic tab glitches
*/
Fullscreen_check() {
    WinGetClientPos ,, &W, &H, "Roblox"
    if H = A_ScreenHeight
        {
            send "{F11}"
        }
    else
        return
}

/*
this checks if the mouse is at 0,0 (shiftlock)
and removes it also it dont work half the time
*/
mouse_00_check() {
    WinGetClientPos ,, &W, &H, "Roblox"
    MouseGetPos &xpos_local, &ypos_local
    if xpos_local = W / 2 {
        if ypos_local = H / 2 {
            ; this if statement check is your in fullscreen & shiftlocked
            send "{shift}"
            sleep 2
            click A_ScreenWidth / 2 + 100 , A_ScreenHeight / 2 + 100
        }
        else {
            ; this if statement check is your windowed & shiftlocked
            send "{shift}"
            sleep 2
            click A_ScreenWidth / 2 + 100 , A_ScreenHeight / 2 + 100
        }
    }
    else
        return
}


resethotkeys(*) {
    msgbox "yea"
}
HandleHotekeyChange(*) {
    msgbox "yea"
}