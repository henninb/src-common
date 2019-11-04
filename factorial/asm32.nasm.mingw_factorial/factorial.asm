BITS 32

%include "asm_io.inc"

GLOBAL _factorial

SEGMENT .data

SEGMENT .bss

SEGMENT .text
_factorial_old:
  enter 0, 0              ; setup routine
  pusha

  sub esp, 4              ; allocate space for local variables
  %define arg1 [ebp + 8]  ;argument 1
  %define exe [ebp + 4]   ;exe name
  %define var1 [ebp - 4]  ;local variable

  add esp, 4              ;deallocate space for local variables
  popa
  mov eax, 0              ; return 0 back to C
  leave
  ret

_factorial:
  mov eax, [esp+4]      ; n
  cmp eax, 0            ; n == 0
  jne L3                ; if not, go to L3
  mov eax, 1            ; return 1
  jmp L2
L3:
  cmp eax, 1            ; n == 1
  jne L1
  mov eax, 1            ; return 1
  jmp L2
L1:
  dec eax               ; n-1
  push eax              ; push argument
  call _factorial       ; do the call, result goes in eax
  add esp, 4            ; get rid of argument
  imul eax, [esp+4]     ; n * factorial(n-1)
L2:
  ret