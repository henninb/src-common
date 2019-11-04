 The .data section
This section is for defining constants, such as filenames or buffer sizes, this data does not change at runtime.
db, dd, etc. instructions that are used in this section.
The .bss section
This section is where you declare your variables. They look something like this:

filename:    resb    255     ; REServe 255 Bytes
number:        resb    1    ; REServe 1 Byte
bignum:        resw    1    ; REServe 1 Word (1 Word = 2 Bytes )
longnum:    resd    1    ; REServe 1 Double Word
pi:        resq    1    ; REServe 1 double precision float
morepi:        rest    1    ; REServe 1 extended precision float

The .text section
This is where the actual assembly code is written. The term "self modifying code" means a program which modifies this section while being executed.
