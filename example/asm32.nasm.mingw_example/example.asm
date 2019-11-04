BITS 32

GLOBAL _print_example
EXTERN _printf

SECTION .text
; -------------------------------------------
; void print_example( char * );
; -------------------------------------------
_print_example:
  push ebp         ; push the base pointer onto the stack
  mov ebp,esp      ; replace the base pointer with the stack pointer

  mov esi,[ebp+8]  ; get address of char *, (4 bytes * 2)
  push esi         ; push a string pointer onto the stack
  call _printf     ; call _printf
  add esp,4        ; add 4 to the stack pointer (because of the char *)

  pop ebp          ; pop the base pointer from the stack into ebp
  ret              ; return control to the calling function
