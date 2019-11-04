dtmToday = Date()

dtmDayOfWeek = DatePart("w", dtmToday)

Select Case dtmDayOfWeek
    Case 1 Wscript.Echo "Sunday"
    Case 2 Wscript.Echo "Monday"
    Case 3 Wscript.Echo "Tuesday"
    Case 4 Wscript.Echo "Wednesday"
    Case 5 Wscript.Echo "Thursday"
    Case 6 Wscript.Echo "Friday"
    Case 7 Wscript.Echo "Saturday"
End Select
