#Requires AutoHotkey v2.0
#SingleInstance
#include ../master_include.ahk

read_hotkeys()

Mainu := gui(, "menu")
Mainu.Opt("+Resize -sysmenu")

Mainu.add("text","x10 y10", "x1 and x2")
x1edit := Mainu.Add("edit", "x10 y25 ", "1")
x2edit := Mainu.Add("edit", "x40 y25 ", "2")

Mainu.add("text","x10", "ability key for !\")
q_or_e_idk_edit := Mainu.Add("edit", "x10 y75", "q")
q_or_e_idk2_the_electric_bogaloo_edit := Mainu.Add("edit", "x40 y75", "q")

changer := Gui(, "menu")
open_changer := Mainu.Add("Button",,"Hotkeys")
open_changer.OnEvent("Click", changer.show)
changer.Opt("+Resize -sysmenu")

;? https://www.autohotkey.com/docs/v2/Hotkeys.htm#Symbols

changer.Add("Link","y10", 'Click <a href="https://www.autohotkey.com/docs/v2/Hotkeys.htm#Symbols">here</a> for hotkey docs')

changer.Add("Hotkey","w75 h20 x y25 voutput1", hotkey_array["hotkey1"])
changer.Add("Hotkey","w75 h20 x y25 voutput2", hotkey_array["hotkey2"])
changer.Add("Hotkey","w75 h20 x y25 voutput3", hotkey_array["hotkey3"])
changer.Add("Hotkey","w75 h20 x y25 voutput4", hotkey_array["hotkey4"])
changer.Add("Hotkey","w75 h20 x y25 voutput5", hotkey_array["hotkey5"])
changer.Add("Hotkey","w75 h20 x y50 voutput6", hotkey_array["hotkey6"])
changer.Add("Hotkey","w75 h20 x y50 voutput7", hotkey_array["hotkey7"])
changer.Add("Hotkey","w75 h20 x y50 voutput8", hotkey_array["hotkey8"])
changer.Add("Hotkey","w75 h20 x y50 voutput9", hotkey_array["hotkey9"])
changer.Add("Hotkey","w75 h20 x y50 voutput", hotkey_array["secrethotkey"])

changer.Add("button",, "Reset hotkeys").onevent("click", resethotkeys)

Mainu.add("text", "x10", "put thing here to spam in chat")
ERDFTCGVYHB := Mainu.Add("edit", "", "/e silly2")


finish := Mainu.Add("button",, "OK")
finish.onevent("click", HandleHotekeyChange)
finish.onevent("click", setx1x2)
finish.onevent("click", q_or_e_idk_settings_or_something)
finish.onevent("click", STUPID_FUCKING_CHAT_SPAMERR)


;hope no one sees this
STUPID_FUCKING_CHAT_SPAMERR(*){
global pasted_text := ERDFTCGVYHB.text
}

q_or_e_idk_settings_or_something(*) {
global q_or_e_idk := q_or_e_idk_edit.text 
global q_or_e_idk2_the_electric_bogaloo :=  q_or_e_idk2_the_electric_bogaloo_edit.text
Mainu.hide
}
q_or_e_idk := "q"
q_or_e_idk2_the_electric_bogaloo := "q"

setx1x2(*) {
global x1 := x1edit.text
global x2 := x2edit.text
Mainu.hide
}

x1 := 1
x2 := -2
