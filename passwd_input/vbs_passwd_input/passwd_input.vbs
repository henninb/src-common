 Function PasswordBox(sPrompt,sDefault)
   set oIE = CreateObject("InternetExplorer.Application")
   With oIE
 ' Configure the IE window
     .RegisterAsDropTarget = False
     .statusbar = false : .toolbar    = false
     .menubar   = false : .addressbar = false
     .Resizable = False
     .Navigate "about:blank"
     Do Until .ReadyState = 4 : WScript.Sleep 50 : Loop
 ' Test for IE 7 - cannot remove 'chrome' in that version
     sVersion  = .document.parentWindow.navigator.appVersion
     if instr(sVersion, "MSIE 7.0") = 0 Then .FullScreen = True
     .width = 400       : .height = 270
 ' Create the password box document
     With .document
       oIE.left = .parentWindow.screen.width \ 2 - 200
       oIE.top  = .parentWindow.screen.height\ 2 - 100
       .open
       .write "<html><head><" & "script>bboxwait=true;</" _
            & "script><title>Password _</title></head>"_
            & "<body bgColor=silver scroll=no " _
            & "language=vbs style='border-" _
            & "style:outset;border-Width:3px'" _
            & " onHelp='window.event.returnvalue=false" _
            & ":window.event.cancelbubble=true'" _
            & " oncontextmenu=" _
            & "'window.event.returnvalue=false" _
            & ":window.event.cancelbubble=true'" _
            & " onkeydown='if ((window.event.keycode>111)"_
            & " and  (window.event.keycode<117)) or" _
            & " window.event.ctrlkey then" _
            & " window.event.keycode=0" _
            & ":window.event.cancelbubble=true" _
            & ":window.event.returnvalue=false'" _
            & " onkeypress='if window.event.keycode=13" _
            & " then bboxwait=false'><center>" _
            & "<div style='padding:10px;background-color:lightblue'>" _
            & "<b>&nbsp" & sPrompt & "<b>&nbsp</div><p>" _
            & "<table bgcolor=cornsilk cellspacing=10><tr><td>" _
            & " <b>User:</b></td><td>" _
            & "<input type=text size=10 id=user value='" _
            & sDefault & "'>" _
            & "</td><tr><td> <b>Password:</b></td><td>" _
            & "<input type=password size=12 id=pass>" _
            & "</td></tr></table><br>" _
            & "<button onclick='bboxwait=false;'>" _
            & "&nbsp;Okay&nbsp;" _
            & "</button> &nbsp; <button onclick=" _
            & "'document.all.user.value=""CANCELLED"";" _
            & "document.all.pass.value="""";" _
            & "bboxwait=false;'>Cancel" _
            & "</button></center></body></html>"
       .close
       Do Until .ReadyState = "complete" : WScript.Sleep 100 : Loop
       .all.user.focus
       .all.user.select ' Optional
       oIE.Visible = True
       CreateObject("Wscript.Shell")_
         .Appactivate "Password _"
       PasswordBox = Array("CANCELLED")
       On Error Resume Next
       Do While .parentWindow.bBoxWait
         if Err Then Exit Function
         WScript.Sleep 100
       Loop
       oIE.Visible = False
       'PasswordBox = Array(.all.user.value, .all.pass.value)
       PasswordBox = .all.pass.value
     End With ' document
   End With   ' IE
 End Function


Wscript.StdOut.Write "Please enter LanId: "
strUserId = Wscript.StdIn.ReadLine
'strUserId = InputBox("Please enter LanId: ")
WScript.Echo strUserId
strPasswd = PasswordBox("Enter UID and password", strUserId)
'wsh.Echo TypeName(strPasswd)
'wsh.Echo VarType(strPasswd)

WScript.Echo strPasswd

Function PromptForInput(prompt)
  Dim prog : prog = WScript.Fullname
  If LCase(Right(prog, 12)) = "\cscript.exe" Then
    Call WScript.StdOut.WriteLine(prompt & " ")
    PromptForInput = WScript.StdIn.ReadLine()
  Else
    Call Err.Raise(vbObjectError + 5, "Must be called from cscript.exe")
  End If
End Function

'Dim input
'input = PromptForInput("Did you wish to continue? [Y/N]")
'Select Case UCase(input)
'Case "Y", "N"
'  Call WScript.StdOut.Writeline("You chose: " & UCase(input))
'Case Else
'  Call WScript.StdOut.Writeline("Invalid option!")
'End Select