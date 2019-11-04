Air Canada Aeroplan Membership Numbers (9 digits)
Bell ExpressVu Account Numbers (16 digits)
CAA Membership Numbers (16 digits)
Canadian SIN - Social Insurance Numbers (9 digits)
Canadian GST Registration Numbers (9 digits) - Found on receipts as 'R123456789'
Diner's Club Credit Cards (14 digits)
IEEE Membership Numbers (8 digits starting with 0)
MasterCard Credit Cards (16 digits)
NBTel Account Numbers (8 digits)
Province of NB Medicare Numbers (9 digits)
Visa Credit Cards (16 digits)



Mastercard
----------
5393673295071466
5147784036833376
5271602321704896
5329409144414923
5362313236601447
5413343046189944
5443163289181091
5216809038179704
5178986528858660
5378154854069869

VISA 16 digit
-------------
4556214777609527
4403999576209249
4716846360115771
4556816981192254
4716234238991428
4929535527831965
4486152520396056
4716049673599001
4024007104861215
4486262968928342

VISA 13 digit
-------------
4438728594779
4716348164945
4716425054316
4556407529673
4024007131325

American Express
----------------
349033448930454
379492601211248
345951855121933
349788330150582
377741376651380

Discover
--------
6011740076696678
6011022793732288
6011689841018769

Diners Club / Carte Blanche
---------------------------
30092105346531
36014098425613
38541919845460

enRoute
-------
214957562552540
214966732329911
201453848252548

JCB 15 digit
------------
180050035435129
210074636968563
210091437655421

JCB 16 digit
------------
3088278356078106
3158438838233175
3112303445140723

Voyager
-------
869927734034469
869988974542181
869902426492440


function CheckCC(CCNo)
Dim i, w, x, y

y = 0
CCNo = Replace(Replace(Replace(CStr(CCNo), "-", ""), " ", ""), ".", "") 'Ensure proper format of the input
'Process digits from right to left, drop
'     last digit if total length is even
w = 2 * (Len(CCNo) Mod 2)
For i = Len(CCNo) - 1 To 1 Step -1
x = Mid(CCNo, i, 1)
if IsNumeric(x) Then
Select Case (i Mod 2) + w
Case 0, 3 'Even Digit - Odd where total length is odd (eg. Visa vs. Amx)
y = y + CInt(x)
Case 1, 2 'Odd Digit - Even where total length is odd (eg. Visa vs. Amx)
x = CInt(x) * 2
if x > 9 Then
'Break the digits (eg. 19 becomes 1 + 9)
'
y = y + (x \ 10) + (x - 10)
Else
y = y + x
End if
End Select
End if
Next
'Return the 10's complement of the total
'
y = 10 - (y Mod 10)
if y > 9 Then y = 0
CheckCC = (CStr(y) = Right(CCNo, 1))
End function
