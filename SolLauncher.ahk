#Requires AutoHotkey v2.0
#NoTrayIcon

;@Ahk2Exe-Set FileVersion, 1.1
;@Ahk2Exe-Set ProductVersion, 1.1.0.0
;@Ahk2Exe-Set CompanyName, Pikakid98

;PortableAppsLauncher
if DirExist("..\Solarus") {
	SetWorkingDir "..\Solarus\solarus"
} else {
	If DirExist("solarus") {
		SetWorkingDir "solarus"
	} else {
		MsgBox "Error! Solarus is not installed. Please download it from https://solarus-games.org/"
		ExitApp
	}
}

MyGui := Gui()

; call dark mode for window title + menu
SetWindowAttribute(MyGui)

; call dark mode for controls
SetWindowTheme(MyGui)

#include .Cmpl8r\DarkMode.scriptlet

MyGui.Title := "SolLauncher"

FakeLink := MyGui.Add("Text", "", "Solarus Launcher")
FakeLink.SetFont("underline cBlue")
FakeLink.OnEvent("Click", Launch1)

FakeLink := MyGui.Add("Text", "", "Quest Editor")
FakeLink.SetFont("underline cBlue")
FakeLink.OnEvent("Click", Launch2)

MyGui.Show("w230")

Launch1(*) {
	MyGui.Hide()
	RunWait "solarus-launcher.exe"
	Reload
}

Launch2(*) {
	MyGui.Hide()
	RunWait "solarus-quest-editor.exe"
	Reload
}