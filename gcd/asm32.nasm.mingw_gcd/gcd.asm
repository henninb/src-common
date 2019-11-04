BITS 32

%include "asm_io.inc"

GLOBAL _template

SEGMENT .data

SEGMENT .bss

segment .text

; int template( int X, int Y);
_template:
  enter 0, 0
  pusha           ;  save eax and ebx

  %define SIZEOF_INT 4
  %define X dword [ebp + 8]
  %define Y dword [ebp + 12]

myloop:
  mov eax, X
  cmp eax, Y
  je equal
  jg greater
  jl less
greater:
  sub eax, Y
  mov X, eax
  jmp myloop
less:
  mov eax, Y
  sub eax, X
  mov Y, eax
  jmp myloop
equal:
  mov eax, X
  ;dump_regs 1

  popa                  ; set eax to 1 and ebx to 0
  mov eax, X            ; return 0 back to C
  leave
  ret
