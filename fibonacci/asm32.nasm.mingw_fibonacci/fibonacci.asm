BITS 32

%include "asm_io.inc"

GLOBAL _fibonacci
GLOBAL _fibonacci_r

SEGMENT .data
  FVAL db " "

SEGMENT .bss

SEGMENT .text
_fibonacci:
  enter 0, 0                ; setup routine
  pusha

  sub esp, 4                ; allocate space for local variables
  %define arg1 [ebp + 8]    ;argument 1
  %define var1 [ebp - 4]    ;local variable

  push  ebx        ; we have to save this since we use it
  mov  ecx, arg1   ; ecx will countdown
  xor  eax, eax    ; eax will hold the current number
  xor  ebx, ebx    ; ebx will hold the next number
  inc  ebx         ; ebx is originally 1
not_zero:
  mov  edx, eax    ; save the current number
  mov  eax, ebx    ; next number is now current
  add  ebx, edx    ; get the new next number
  dec  ecx         ; count down
  jnz  not_zero    ; if not done counting, do some more

  ;mov edi, FVAL
  ;mov dword [edi], eax
  mov dword var1, eax

  ;mov eax, ebx
  pop  ebx         ; restore ebx before returning
  ;ret

; code is put in the text segment.
  add esp, 4           ;deallocate space for local variables
  popa
  ;mov eax, 0            ; return 0 back to C
  ;mov eax, [FVAL]       ; return the value at address FVAL back to C
  mov eax, var1          ; return the value at address FVAL back to C
  leave
  ret


;int fibonacci( int n ) {
;  if( n == 0 ) {
;    return 0;
;  } else if( n == 1 ) {
;    return 1;
;  } else {
;    return fibonacci(n - 1) + fibonacci(n - 2);
;  }
;}

;_fibonacci_r:
;  mov eax, [esp+4]      ; n
;  cmp eax, 0            ; n == 0
;  jne L3                ; if not, go to L3
;  mov eax, 1            ; return 1
;  jmp L2
;L3:
;  cmp eax, 1            ; n == 1
;  jne L1
;  mov eax, 1            ; return 1
;  jmp L2
;L1:
;  dec eax               ; n-1
;  push eax              ; push argument
;  call _fibonacci_r       ; do the call, result goes in eax
;  add esp, 4            ; get rid of argument
;  imul eax, [esp+4]     ; n * factorial(n-1)
;L4:
;L2:
;  ret

_fibonacci_r:
  push ebp
  mov  ebp, esp
  push ebx                ;save ebx
  sub esp, 8              ;allocate space for two vars

  %define arg1 [ebp + 8]  ;arg1
  %define var1 [ebp - 8]  ;local_var1
  cmp dword arg1, 0
  jne  L2
  mov dword var1, 0
  jmp  L1
L2:
  cmp dword arg1, 1
  jne L4
  mov dword var1, 1
  jmp L1
L4:
  mov eax, arg1            ;store the value of arg1 in eax    ;movl  8(%ebp), %eax
  dec eax                  ;decriment eax                     ;decl  %eax
  mov [esp], eax           ;put eax on the stack              movl  %eax, (%esp)
  call _fibonacci_r                                           ;call  _fibonacci
  mov  ebx, eax                                               ;movl  %eax, %ebx
  mov  eax, arg1                                              ;movl  8(%ebp), %eax
  sub  eax, 2                                                 ;subl  $2, %eax
  mov  [esp], eax                                             ;movl  %eax, (%esp)
  call _fibonacci_r                                           ;call  _fibonacci
  add  ebx, eax                                               ;addl  %eax, %ebx
  mov var1, ebx                                               ;movl  %ebx, -8(%ebp)
L1:
  mov eax, var1
  add esp, 8               ;clean up space for two vars
  pop ebx                  ;restore ebx
  pop ebp
  ret
