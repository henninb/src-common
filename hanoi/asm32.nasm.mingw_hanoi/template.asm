BITS 32

%include "asm_io.inc"

GLOBAL _template

SEGMENT .data
; initialized data is put in the data segment here
  PROMPT db "Prompt: ", 0
  BUFSZ equ 1024
  STDIN equ 0

SEGMENT .bss
  ; uninitialized data is put in the bss segment
  fname: resb 255  ; reserve 255 bytes
  number: resb 1 ; REServe 1 Byte
  bignum: resw 1 ; REServe 1 Word (1 Word = 2 Bytes )
  longnum: resd 1 ; REServe 1 Double Word
  pi: resq 1 ; REServe 1 double precision float
  morepi: rest 1 ; REServe 1 extended precision float
  ;.comm buf, 8192                 ; Reserve 8k

SEGMENT .text
_template:
  enter 0, 0 ; setup routine
  pusha

  sub esp, 28               ; allocate space for local variables
  %define arg1 [ebp + 8]    ;argument 1
  %define exe [ebp + 4]    ;exe name
  %define var1 [ebp - 4]    ;local variable
  %define var2 [ebp - 8]    ;local variable
  %define var3 [ebp - 12]   ;local variable
  %define var4 [ebp - 16]   ;local variable
  %define var5 [ebp - 20]   ;local variable
  %define var6 [ebp - 24]   ;local variable
  %define var7 [ebp - 28]   ;local variable

  ;dump_regs 1
  ;dump_regs 2
  ;push ebp         ; push the base pointer onto the stack
  ;mov ebp,esp      ; replace the base pointer with the stack pointer

;leave,  also known as the procedure epilog, is the same as:

; movl  %ebp, %esp
; popl  %ebp

;enter, also known as the procedure prolog, is the same as:

; pushl   %ebp
; movl    %esp, %ebp

.quit:
; code is put in the text segment.
  add esp, 28           ;deallocate space for local variables
  popa
  mov eax, 0            ; return 0 back to C
  leave
  ret
