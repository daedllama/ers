#Requires AutoHotkey v2.0
#SingleInstance
#include ../master_include.ahk

;? base hotkey is alt + ]
showgui(*)
{
    safetycheck()
    Mainu.Show("AutoSize Center")
}

;? base hotkey is F2
tabgltich_temp(*){
    safetycheck()
    Fullscreen_check()
    mouse_00_check()
    if {}
    Click -1, -2, "Down Right"
    KeyWait hotkey_array["hotkey2"]
    click A_ScreenWidth / 3, A_ScreenHeight /2, "Up Right"

}

;? base hotkey is F3
TabGlitchTillRightClick(*){
    Fullscreen_check()
    mouse_00_check()
    while GetKeyState(hotkey_array["hotkey3"], "P")
        {
            safetycheck()
            loop "1"
                click -1, -10, "Down Right"
                sleep 25
                click A_ScreenWidth / 3, A_ScreenHeight /2, "Up Left"
        }
}


;? base hotkey is F4
five_to_0_spam(*){
    while GetKeyState(hotkey_array["hotkey4"], "P")
        {
            safetycheck()
            counter := 5
            loop "6" {
                send counter
                send "q"
                sleep 10
                click  ,, "Left"
                sleep 10
                counter += 1
            }
            counter += 0
        }
}

;? base hotkey is F5
tab_item_spam(*){
    safetycheck()
    Fullscreen_check()
    mouse_00_check()
    loop "5"{
        click -1, -10, "Down Right"
        sleep 25
        click 0, 0, "Up Left"
    }
    sleep 10
    counter := 5
    loop "6" {
        send counter
        send "q"
        sleep 10
        click A_ScreenWidth / 2 , A_ScreenHeight / 2, "Left"
        sleep 10
        counter += 1
    }
    counter += 0
    sleep 10
    click A_ScreenWidth / 2, A_ScreenHeight / 2, "Right"
}

;? base hotkey is F7
chatSpam(*) {
    while getkeystate(hotkey_array["hotkey7"], "P") {
        A_Clipboard := pasted_text
        send "/"
        sleep 5
        send "^v"
        sleep 5
        send "{enter}"
        sleep 5
    }
}

;? base hotkey is ]
fun_spinny(*)
{
    safetycheck()
    while getkeystate(hotkey_array["hotkey6"], "P")
        loop "1" {
            sendevent "{click " A_ScreenWidth / x1 " " A_ScreenHeight / 2 " down}{click " A_ScreenWidth / (x2 / 2) "  " A_ScreenHeight / 2 " up}"
        }
}

; i think inv width and height is 655 × 390
;? base hotkey is !\
nova(*) {
    safetycheck()
    Fullscreen_check()
    mouse_00_check()
    if PixelSearch(&Px, &Py, A_ScreenWidth / 2.4, A_ScreenHeight / 1.2, A_ScreenWidth / 2.4 + 60, A_ScreenHeight / 1.2 + 60, 0x5A5A5A, 0) {
    Loop 6 {
            Loop 10 {
                click(Px, Py, 0)
                send q_or_e_idk
                send q_or_e_idk2_the_electric_bogaloo
                sleep "1"
                Px += 65
                click(Px, Py, 10)
                send q_or_e_idk
                send q_or_e_idk2_the_electric_bogaloo
                sleep "1"
            }
            Py += 60
            Px += - 650
        }
    }
    else {
    MsgBox "no item in first inv slot"
    }
}

;both of these functions together should put you in a windowed unlocked state
;? base hotkey is +!F7
funccheck(*) {
    safetycheck()
    mouse_00_check()
    Fullscreen_check()
}

;! REMEMBER TO REMOVE THIS IN PUBLIC.AHK
;? base hotkey is ,
firesecret(*)
{ while GetKeyState(hotkey_array["secrethotkey"], "P")
    loop "1" {
    Send "{1 down}"
    Send "{2 down}"
    sleep 25
    Send "{1 up}"
    Send "{2 up}"
    sleep 25
    }
}
