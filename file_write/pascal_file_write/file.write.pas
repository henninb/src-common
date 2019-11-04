Program Solution01;

 Var i:Byte;

 data:array[1..10]of String;{your array}

 F:Text;{file's variable}

 FileName:String;{stores the file's name and path}

 Lines:String;

 Counter:Integer;

 Procedure FileReadInToArray;

 Begin

 FileName:='input.txt';

 Assign(F,FileName);

 {$I-}

 Reset(F); {open for reading}

 {$I+}

 If (IoResult = 0) Then Begin

 Counter:=1;

 While Not(EoF(F)) Do Begin

 ReadLn(F,Lines);

 Data[Counter]:=Lines;

 If (EoF(F)) Then Break;

 Inc(Counter);{increase 'Counter' by 1}

 End; {of while}

 End

 Else WriteLn('Error when reading the file');

 Close(F);

 End;

 Begin {main}

 FileReadInToArray; {calling our procedure}

 For i:=1 To 10 Do WriteLn(i,'. element: ',Data[i]);

 ReadLn;

 End.{end of main}

 {

 the contents of input.txt

 One word one line

apple
window
pascal
wine
next
day
sun
rain
peach
computer

 -=Created by FlamingClaw=-

 Written and tested in Dev Pascal 1.9.2. By me

 -=2009.04.26=-

 }
