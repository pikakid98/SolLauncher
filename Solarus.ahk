﻿#Requires AutoHotkey v2.0
#NoTrayIcon

;@Ahk2Exe-Set FileVersion, 1.0
;@Ahk2Exe-Set ProductVersion, 1.0.0.0
;@Ahk2Exe-Set CompanyName, Pikakid98

MyGui := Gui()

MyGui.Title := "Solarus"

FakeLink := MyGui.Add("Text", "", "Solarus Launcher")
FakeLink.SetFont("underline cBlue")
FakeLink.OnEvent("Click", Launch1)

FakeLink := MyGui.Add("Text", "", "Quest Editor")
FakeLink.SetFont("underline cBlue")
FakeLink.OnEvent("Click", Launch2)

MyGui.Show("w230")

Launch1(*) {
	MyGui.Hide()
	SetWorkingDir "solarus"
	RunWait "solarus-launcher.exe"
	Reload
}

Launch2(*) {
	MyGui.Hide()
	SetWorkingDir "solarus"
	RunWait "solarus-quest-editor.exe"
	Reload
}