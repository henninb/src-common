BITS 32

%include "asm_io.inc"

GLOBAL _julian_date

SEGMENT .data
global LC0

LC0:
 dd  0
 dd  1071644672

SEGMENT .bss

SEGMENT .text

_julian_date:
  push ebp
  mov ebp, esp
  push ebx
  sub esp, 8

  %define arg1 [ebp + 8]    ;argument 1
  %define arg2 [ebp + 12]    ;argument 2
  ;%define var1 [ebp - 4]    ;local variable
  add dword [ebp + 8], 8000                            
  cmp dword [ebp + 12], 2                              
  jg  L2                                               
  dec dword[ebp + 8]                                   
  lea eax, [ebp + 12]                                  
  add dword [eax], 12                                  
L2:                                                    
  mov eax, [ebp + 8]                                   ;movl  8(%ebp), %eax
  mov [ebp - 8], eax                                   ;movl  %eax, -8(%ebp)
  sal [ebp - 8], 3                                     ;sall  $3, -8(%ebp)
  add [ebp - 8], eax                                   ;addl  %eax, -8(%ebp)
  sal [ebp - 8], 3                                     ;sall  $3, -8(%ebp)
  add [ebp - 8], eax                                   ;addl  %eax, -8(%ebp)
  mov eax, [ebp - 8]                                   ;movl  -8(%ebp), %eax
  sal eax, 2                                           ;sall  $2, %eax
  add [ebp - 8], eax                                   ;addl  %eax, -8(%ebp)
  mov eax, [ebp + 8]                                   ;movl  8(%ebp), %eax
  mov [ebp - 12], eax                                  ;movl  %eax, -12(%ebp)
  cmp dword [ebp - 12], 0                              ;cmpl  $0, -12(%ebp)
  jns  L3                                              ;jns  L3
  add dword [ebp - 12], 3                              ;addl  $3, -12(%ebp)
L3:
  mov eax, [ebp - 12]
  sar eax, 2
  mov ebx, [ebp - 8]
  add ebx, eax
  mov ecx, [ebp + 8]
  mov eax, 1374389535
  imul ecx
  sar edx, 5
  mov eax, ecx
  sar eax, 31
  sub edx, eax
  mov eax, edx
  sub ebx, eax
  mov ecx, [ebp + 8]
  mov eax, 1374389535
  imul ecx
  sar edx, 7
  mov eax, ecx
  sar eax, 31
  sub edx, eax
  mov eax, edx
  add ebx, eax
  mov edx, [ebp + 12]
  mov eax, edx
  sal eax, 3
  add eax, edx
  mov edx, eax
  sal edx, 4
  add eax, edx
  lea ecx, [eax + 3]
  mov eax, 1717986919
  imul ecx
  ;sar edx    ; Shift Arithmetic right
  ;sar edx, 1    ; Shift Arithmetic right (not sure)
  mov eax, ecx
  sar eax, 31
  sub edx, eax
  mov eax, edx
  ; base index scale in AT&T
  ;lea eax, [ebx, eax]     ;lea     eax,[ebx+eax]        |  leal    (%ebx,%eax),%eax
  lea eax, [ebx + eax]
  add eax, [ebp + 16]
  sub eax, 1200913
  push eax
  fild dword [esp]
  lea esp, [esp + 4]
  ;fld LC0
  ;fsubrp  %st, %st(1)
  ;fsubrp  st1, st0
  ;fsubp st1, st0
  add esp, 8
  pop ebx
  pop ebp
  ret

;sar eax, 1  # Divide by 2
