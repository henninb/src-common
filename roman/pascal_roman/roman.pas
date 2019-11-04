{roman.p 2000-11-01}

{Copyright (c) 1998           Allegro Consultants, Inc.}
{                                       www.allegro.com}
{Author:               Stan Sieler (sieler@allegro.com)}

{NOTE Comments that contain "NOTE" (like this comment) }
{NOTE are intended as teaching commentary.  To see what}
{NOTE the "real" program looks like, remove such lines.}
{NOTE This can be done via:                            }
{NOTE    grep -v NOTE roman.p                          }
{NOTE (The only instance of uppercase NOTE is in such  }
{NOTE comments.)                                       }
{NOTE                                                  }
{NOTE The above shows the usefulness of defining and   }
{NOTE using conventions in your source code.           }
{NOTE                                                  }
{NOTE: Somtimes, I want to discuss several things in   }
{NOTE  the same section of NOTEs ... so I'll start     }
{NOTE  each section with "NOTE:", not just "NOTE ".    }
{NOTE                                                  }
{NOTE: When you remove the NOTE lines, you may be left }
{NOTE  with redundant blank lines in placed (e.g., the }
{NOTE  blank line after this NOTE block and before the }
{NOTE  "program roman" line wasn't intended to be there}
{NOTE  ...this is because I added some blank lines to  }
{NOTE  separate the NOTE block from the regular program}
{NOTE  in an effort to make the combined program + NOTE}
{NOTE  text easier to read.  Simply combine any        }
{NOTE  block of two or more consecutive blank lines    }
{NOTE  into one blank line, if you wish.               }
{NOTE                                                  }
{NOTE:I posted this source because students kept asking}
{NOTE me "how can I write a Pascal program that accepts}
{NOTE Roman numerals".  I'm hoping that their teachers }
{NOTE are as adept at searching the web as their       }
{NOTE students, and so become familiar with this source}
{NOTE code (to reduce plagiarism).  My intent is to    }
{NOTE provide a readable (and nearly correct) example  }
{NOTE of writing something in Pascal.                  }
{NOTE                                                  }
{NOTE From my own teaching experience, I know that     }
{NOTE programming is both an art and a science ... and }
{NOTE that the art portion is rarely taught in school. }
{NOTE                                                  }
{NOTE Teachers: feel free to contact me.               }
{NOTE A number of important follow-on questions are    }
{NOTE embedded in this source.                         }
{NOTE                                                  }
{NOTE:Comments must try to satisfy two goals:          }
{NOTE                                                  }
{NOTE   1) provide useful information;                 }
{NOTE      (this implies that they should not be       }
{NOTE      used to provide *obvious* information,      }
{NOTE      like:    x := x + 1;   <increment x>        }
{NOTE                                                  }
{NOTE   2) they should not get in the way of reading   }
{NOTE      the source code!                            }
{NOTE      With some exceptions, you should be able    }
{NOTE      to fold a source listing in half length-wise}
{NOTE      and see only source code on the left side,  }
{NOTE      and comments only on the right side.        }
{NOTE      For an example, see the section below where }
{NOTE      the line "empties := empties + 1" is.       }
{NOTE                                                  }
{NOTE:Sometimes I let code be "self-documenting".      }
{NOTE For example, look at the "case" statement in     }
{NOTE map_roman_numeral.  It's pretty clear that I'm   }
{NOTE handling both lower-case and upper-case input... }
{NOTE so I didn't insult the reader by commenting on it}

program roman (output);

{********************************************************
This program reads Roman numerals, and prints the corresponding
Arabic number.  E.g., "III" is 3, "IX" is 9.

Some of the rules for Roman numerals taken from:
   http://www.deadline.demon.co.uk/roman/intro.htm

Certain very-old forms are allowed, like: IIII (for 4).

No attempt is made to provide a means for entering a
Roman numeral with a bar over it (i.e., a 1000-times bar)
       _
Thus,  V  (= 5000) cannot be handled by this program.

Mixed upper/lower case is allowed.

**********************************************************
To do:            (things to add or fix)

1) The program does not attempt to check for too many
   digits in a row.  Thus, MMMMMMMMMM is allowed.
   If your Pascal's integer variables are less than 32 bits
   in size, this means you could abort the program by
   entering 66 "M"s in a row.

2) "ixix" is allowed ... shouldn't be.

**********************************************************
HISTORY (most recent first)
HIST
HIST 2000-11-01
HIST   Updated some notes.
HIST
HIST 1998-05-05
HIST   Expanded teaching notes somewhat.
HIST
HIST 1998-03-01
HIST   Added teaching notes.
HIST   Tightened acceptance rules to conform with
HIST   stricter historical rules.  (E.g., no "IC" for 99)
HIST
HIST 1997-10-30
HIST   First version
NOTE
NOTE ---about HIST...
NOTE We put the *most recent* first because then you don't
NOTE have to scroll through multiple lines to find the
NOTE most interesting data!
NOTE You can do "grep HIST roman.p" to get just the
NOTE history information (well, once you've removed this
NOTE "NOTE" block :)
NOTE: If the author changes, then I'd add author / patcher
NOTE information in the HIST section as appropriate.
*********************************************************}

const
   ccl            = 1;        {an error return from "readx"}
   cce            = 2;        {an "ok" return from "readx"}

{NOTE: I'm going to be using an operating-system routine to    }
{NOTE  do my terminal I/O.  The routine is "readx" (documented }
{NOTE  below, somewhere).  It returns an error/success result  }
{NOTE  via a somewhat cryptic function called "ccode".  The    }
{NOTE  ccode function can return 0, 1, or 2.  In the case of   }
{NOTE  "readx", only 1 and 2 are possible return values, and   }
{NOTE  1 means "error" and 2 means "ok".  These look odd today,}
{NOTE  but they weren't quite as strange in the late 1970's,   }
{NOTE  and were historically referred to as "condition codes". }
{NOTE  ccl is read as "Condition Code Less-than", and cce is   }
{NOTE  read as "Condition Code Equal".  ccl was traditionally  }
{NOTE  returned to signify an error.  Note the completely      }
{NOTE  *unobvious* relationship between "readx" and "ccode"    }
{NOTE  when you see it later.   Or, for that matter, the       }
{NOTE  equally unobvious relationship between the              }
{NOTE  map_roman_numeral function call and the subsequent use  }
{NOTE  of "found_error" or "n = 0".  Can you think of a better }
{NOTE  way of calling a procedure or function, and getting     }
{NOTE  *two* pieces of return information?  (I.e., the value of}
{NOTE  the current digit *and* a success/failure indicator)    }

type
   pac80          = packed array [1..80] of char;
   str80          = string [80];

var
   buf            : pac80;
   buf_str        : str80;
   debug1         : boolean;
   debug2         : boolean;
   empties        : integer;         {# of empty lines read}
   found_error    : boolean;
   inx            : integer;
   input_len      : integer;
   prior_n        : integer;
   result         : integer;

{NOTE: Alphabetic order make is easier to find variables (and   }
{NOTE  other things).  Also, notice the clean lineup of the     }
{NOTE  ":" column (and "=" for types).                          }
{NOTE                                                           }
{NOTE: I try to avoid anonymous types.  So, instead of declaring}
{NOTE  "buf" as "var buf : packed array [1..80] of char,        }
{NOTE  I declared the type first (pac80), and then the variable.}
{NOTE                                                           }
{NOTE: I generally try to make type names informative, and      }
{NOTE  related to their usage.  In the case of str80 and pac80, }
{NOTE  which are general purpose types, I chose to make it      }
{NOTE  crystal clear to the reader what their definition is     }
{NOTE  simply from reading the name of the type.  Thus, you     }
{NOTE  know that a type of "pac8" is a going to be declared as  }
{NOTE  pac8 = packed array [1..8] of char;                      }
{NOTE                                                           }
{NOTE: Can you spot a problem with some of the variable names   }
{NOTE  above?  Hint: what does "debug1" mean?  (See the         }
{NOTE  outer block initialization code for a clue as to what    }
{NOTE  you might want to rename it to.)                         }

Function  readx               : shortint;          intrinsic;
Procedure terminate;                               intrinsic;

{NOTE: This sample program is being compiled & run on a computer}
{NOTE  known as an "HP 3000", a RISC based general purpose      }
{NOTE  computer from Hewlett-Packard, whose OS is MPE/iX.       }
{NOTE  See http://www.hp.com/go/3000 for information about it!  }
{NOTE  (or, visit comp.sys.hp.mpe)                              }
{NOTE                                                           }
{NOTE: On MPE/iX, it's better to use "intrinsics" (think of them}
{NOTE  like C-library functions) to do I/O rather than the      }
{NOTE  built-in Pascal functions/procedures.  Why? For two      }
{NOTE  reasons:  performance and predictability.                }
{NOTE                                                           }
{NOTE  Pascal's I/O is poor, a minimum implementation of I/O.   }
{NOTE  The reader doesn't always know the ramification of a     }
{NOTE  "readln"...will it cause a trap if less/more data is     }
{NOTE  entered?  Will it trap if letter/non-letters are entered?}
{NOTE  What happens if <return> is pressed without any other    }
{NOTE  data being typed?   (etc.)                               }
{NOTE                                                           }
{NOTE  readx reads N or N*2 (for obscure reasons) bytes from    }
{NOTE  stdin.   "readx (buf, -80)" will read up to 80 bytes.    }
{NOTE  The buffer is not blank filled ... if the user types 3   }
{NOTE  letters ("abc") and then <return>, the input length is   }
{NOTE  returned as 3, the buffer will have "a", "b", and "c"    }
{NOTE  and *NO RETURN CHARACTER*.                               }
{NOTE  As the user enters the 80th character (or whatever the   }
{NOTE  number of characters was requested), an implied <return> }
{NOTE  is done for them.   (Thus, if you wish, you could write  }
{NOTE  code that would prompt for a one-character input and     }
{NOTE  get the input without requiring the user to enter a      }
{NOTE  <return> after the character by doing "readx (buf, -1)") }
{NOTE  (In short, just about the perfect "read a line of text"  }
{NOTE  function!)                                               }
{NOTE                                                           }
{NOTE  A completely empty input line (where the user pressed a  }
{NOTE  single key (the "return" key (or "enter" on some key-    }
{NOTE  boards) will be returned as a result of 0 bytes, and no  }
{NOTE  change will be made to the "buf" parameter.              }
{NOTE                                                           }
{NOTE: "terminate" is like C's "exit (0)" ... it causes a       }
{NOTE  normal termination of the process.                       }

{*****************************************************}
function map_roman_numeral (numeral : char) : integer;

   begin

   case numeral of
      'i', 'I': map_roman_numeral :=    1;
      'v', 'V': map_roman_numeral :=    5;
      'x', 'X': map_roman_numeral :=   10;
      'l', 'L': map_roman_numeral :=   50;
      'c', 'C': map_roman_numeral :=  100;
      'd', 'D': map_roman_numeral :=  500;
      'm', 'M': map_roman_numeral := 1000;
{NOTE: There are two obvious orderings for the above case}
{NOTE  elements:  alphabetic, or ascending numeric.      }
{NOTE  I chose ascending numeric to help visually detect }
{NOTE  if I had missed any values (e.g., "10").          }
{NOTE  That's also why I added extra spaces between the  }
{NOTE  ":=" and number on some of the lines...to make the}
{NOTE  numeric values line up and show their relationship}

      otherwise
         begin
         found_error := true;
         map_roman_numeral := 0;
         end;
      end;

{NOTE: Any path through the case statement will result in}
{NOTE  *some* value being assigned to map_roman_numeral. }
{NOTE  If this was a longer routine, I'd either document }
{NOTE  this clearly at the start or (the usual case) I'd }
{NOTE  add an initial statemtent like:                   }
{NOTE     map_roman_numeral := 0;   <assume error>       }
{NOTE  at the start of the routine.                      }
{NOTE                                                    }
{NOTE: You're safer assuming an error than assuming      }
{NOTE  success!  (Student question: why should that be?) }

   end {map_roman_numeral proc};
{*****************************************************}
procedure handle_numeral;

      {Handles a single character:                 }
      {   Fetch the character.                     }
      {   Check that it's one of I,V,X,L,C,D,M     }
      {                       or i,v,x,l,c,d,m     }
      {   See if it is followed by a "larger"      }
      {   roman numeral (e.g., IX)                 }
      {   If yes, subtract the current numeral     }
      {           from the result we're building;  }
      {   If no, add the new numeral to rslt.      }

   var
      n           : integer;
      next_n      : integer;

   begin

   n := map_roman_numeral (buf [inx]);

         {n is now 1, 10, 50, 100, 500, or 1000}
         { (or 0 if an error was detected)     }

   if n = 0 then              {was there an error?}
         {yes...don't add/subtract anything}

   else if inx = input_len then
      result := result + n    {last character!}

   else
      begin                   {not the last...}
            {Peek at the next character...}

      next_n := map_roman_numeral (buf [inx + 1]);

            {Note: if next character is invalid, then}
            {next_n is 0.                            }

      if debug2 then
         writeln ('inx = ', inx:2,
                  ', n = ', n:5,
                  ', prior_n = ', prior_n:5,
                  ', next_n = ', next_n:5);

      if n < next_n then
         begin
         if not (n in [1, 10, 100]) then
            begin
            found_error := true;
            writeln ('Oops, you can''t use ', buf [inx],
                  ' as a "subtractive" ... only I, X, and C.');
            end

         else if prior_n < next_n then
            begin
            found_error := true;
            writeln ('Oops, you can''t have two smaller digits before ',
                     'the ', buf [inx]);
            end;

               {Check for valid subtractive pair...}

         if found_error then

         else if ( (n =   1) and ( (next_n =   10) or (next_n =   5)))
              or ( (n =  10) and ( (next_n =  100) or (next_n =  50)))
              or ( (n = 100) and ( (next_n = 1000) or (next_n = 500)))
               then
            {valid subtractive pair}

         else
            begin
            found_error := true;
            writeln ('Oops, invalid subtractive pair: ', buf [inx],
                  buf [inx + 1]);
{NOTE: it would be nice if the above could report: }
{NOTE     Oops, invalid subtractive pair: IC       }
{NOTE  when n is 1 and next_n is 100!              }
{NOTE  How would you go about doing that in a nice }
{NOTE  way?                                        }

            end;

         result := result - n;
         end                  {subtractive}

      else
         result := result + n;

      prior_n := n;
      end;                    {not the last character}

   end {handle_numeral proc};
{*****************************************************}
procedure do_one;

   label
      999;

   begin

   found_error := false;
   prior_n := maxint;

   writeln (' ');
   prompt ('Enter a Roman numeral: ');

         {Read up to 80 characters from user...}

   input_len := readx (buf, -80);

{NOTE: readx will not append a <return> or a <null> at the end! }
{NOTE                                                           }
{NOTE: If your OS allows it, check to see if the read terminated}
{NOTE  due to an I/O error... as in the following if/then block.}

   if ccode <> cce then
      begin
      writeln ('Oops...I/O error on input...terminating!');
      terminate;

{NOTE: it would be nice to return an error to the process that}
{NOTE  started our process ... perhaps something like         }
{NOTE  "halt (1)" if your Pascal and OS allow it, instead of  }
{NOTE  the "terminate" call above.                            }
      end;

   writeln (' ');             {print a blank line}

         {"Strip" trailing blanks from the input...}
{NOTE: The following "while" assumes that the compiler supports}
{NOTE  partial evaluation of boolean expressions!  I.e., for   }
{NOTE  an expression like "A OR B", the compiler is smart enough}
{NOTE  to not even attempt to evalue B if A is true.  In the   }
{NOTE  case below, it's critical that the compiler *NOT* try   }
{NOTE  to evaluate the "(buf [input_len] = ' ')" when input_len}
{NOTE  is 0!  Can you think of a way to rewrite the following  }
{NOTE  if your compiler didn't support partial evaluation?     }

   while (input_len > 0) and (buf [input_len] = ' ') do
      input_len := input_len - 1;

   if input_len = 0 then      {Was the input completely empty?}
      begin                   {Yep...complain, possibly terminate}
      empties := empties + 1;
      writeln ('Oops, you didn''t give me any input');
      if (empties > 99) then
         terminate;

      goto 999;               {exit this routine}

{NOTE: yes, we could have avoided the goto ... by indenting }
{NOTE  the rest of the code.  But then, the reader wonders: }
{NOTE  what's coming after the indent finishes?  With the   }
{NOTE  "goto 999", the reader says "aha, this is a branch   }
{NOTE  to the "end" of the routine!  (I always use "999"    }
{NOTE  in Pascal, and "end_proc" in C if I need a label at  }
{NOTE  the end of a procedure.)                             }
{NOTE  In short, sometimes a simple clean goto is the best. }
      end;

   if input_len > 0 then
      if buf [1] = '/' then
         terminate;

         {Let's copy the data into a string variable...}
         {Why?  Because strings tend to print nicer    }
         {than pac variables.                          }

         {We know that input_len is in range [0, 80]}
         {Which also means we know that input_len is}
         {in range:  [0, strmax (buf_str)]          }

         {Set the string length (so the subsequent  }
         {strmove won't abort)...                   }

   setstrlen (buf_str, input_len);

         {Copy the data...}

   strmove (input_len, buf {source}, 1, buf_str {dest}, 1);

{NOTE: strmove is sort of like C's memcpy ... you tell it}
{NOTE  how many bytes to copy (input_len), and where to  }
{NOTE  get the data (source), and where to put the data  }
{NOTE  (destination).  strmove only allows strings and   }
{NOTE  packed arrays of characters ... and in both cases }
{NOTE  you have to tell it the starting index into each  }
{NOTE  variable.  The above says "copy input_len bytes of}
{NOTE  data from buf (starting at byte 1) into buf_str   }
{NOTE  (starting at byte 1).                             }

         {We know we have some kind of data in buf...}
         {but what if the user entered "  III"?      }
         {(I.e., 2 blanks and then I, I, and I.)     }

         {The following will "strip" leading blanks. }

   inx := 1;          {index into buf}

   while (input_len > 0) and (buf [inx] = ' ') do
      begin
      inx := inx + 1;
      input_len := input_len - 1;
      end;

         {At this point, buf [inx] is a non-blank character}
         {(We know one exists, because we earlier determined}
         {that the input had at least one non-blank in it.}

         {We're going to loop, handling each character, building}
         {up a numeric value in "result"...                     }

   result := 0;       {will hold numeric equivalent of roman numeral}

         {Loop through the rest of the input buffer...}

   while (inx <= input_len) do
      begin
      handle_numeral;         {fetch, and handle, a character}

      if found_error then
         begin
               {Report the error, and print the input and then    }
               {print a "^" pointing to the offending character...}

         writeln;
         writeln ('Invalid numeral at index ', inx:1, ' = ', buf [inx]);
         writeln ('   ' + buf_str);
{NOTE: *now* we see why buf_str was setup earlier!  If we had said: }
{NOTE     writeln ('   ', buf);                                     }
{NOTE  the same *apparent* output *might* result ... but might not! }
{NOTE  Remember, buf is a pac80 ... and writeln will default to     }
{NOTE  writing all 80 bytes.  We never initialized them to anything,}
{NOTE  only the bytes entered by the user have known values.        }
{NOTE  Even if we *had* blanked it out ... if the user entered "I"  }
{NOTE  the writln with "buf" would write 83 characters to stdout:   }
{NOTE  The three-blank prefix and the 80 characters in "buf".       }
{NOTE  It's tacky (and sometimes worse) to write extra trailing     }
{NOTE  blanks (or nulls) to stdout!                                 }
{NOTE  Ok, what if we tried saying:                                 }
{NOTE     writeln ('   ', buf:input_len);                           }
{NOTE  That's closer, except: (a) it might not compile in some      }
{NOTE  versions of Pascal; and (b) it's the wrong value to use.     }
{NOTE  (input_len was reduced by the number of leading blanks!)     }
{NOTE  The following would work:                                    }
{NOTE     writeln ('   ', buf:(input_len - (inx - 1)));             }

         writeln ('   ' + strrpt (' ', inx - 1) + '^');
         goto 999;
         end;

      if debug1 then
         writeln ('   at inx = ', inx:2, ' result = ', result:5);

      inx := inx + 1;
      end;                    {while inx <= input_len}
{NOTE: the comment on the "end" above reminds the reader of   }
{NOTE  what the block we're in is.  I usually don't comment   }
{NOTE  the end of small blocks...where the "end" is likely to }
{NOTE  be on the same page/screen as the "begin" ... that     }
{NOTE  would simply clutter the text far too much!            }

         {Tell the user, concisely, what the result is...}

   writeln ('Result = ', result:1);

{NOTE: Pascal's I/O sure is annoyingly limited, particularly}
{NOTE  in the "formatting" area.  You can't say "suppress if}
{NOTE  zero", or "left-justfify the number", or...          }

999:

   end {do_one proc};
{*****************************************************}

begin

{NOTE: You're not supposed to count on the value of uninitialized}
{NOTE  variables ... so we initialize some here.                 }

debug1 := false;          {"high level" debug (minimal tracing)}
debug2 := false;          {"low level" debug (expanded tracing)}

empties := 0;

writeln (' ');
writeln ('Roman Numeral --> Decimal converter');

while true do
   do_one;        {Will terminate if "/" entered or I/O error hit}

end.
