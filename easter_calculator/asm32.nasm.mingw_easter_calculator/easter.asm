BITS 32

%include "asm_io.inc"

segment .text
  global _easter_asm

;typedef struct {
;  unsigned short d;
;  unsigned short m;
;} Date;

;void easter_asm(unsigned short Y, Date *d)
;   computes the Easter date for the year Y and stores it in d
;
;Parameters
;   Y - the year
;   d - the Date struct in which to store the result

%define d [ebp + 12]
%define Y [ebp + 8]
_easter_asm:
  enter 0, 0
  pusha

  sub esp, 28
  %define G [ebp - 4]
  %define C [ebp - 8]
  %define X [ebp - 12]
  %define Z [ebp - 16]
  %define D [ebp - 20]
  %define E [ebp - 24]
  %define N [ebp - 28]

  ; int G = (Y % 19) + 1;
  ; 2009 % 19
  xor edx, edx
  mov eax, Y
  mov ebx, 19
  div ebx
  inc edx
  mov G, edx
  ;dump_regs 2

  ; int C = (int)(Y / 100) + 1;
  xor edx, edx
  mov eax, Y
  mov ebx, 100
  div ebx
  inc eax
  mov C, eax

  ; int X = 3 * C / 4 - 12;
  xor edx, edx
  mov eax, C
  mov ebx, 4
  div ebx
  mov ebx, 3
  mul ebx
  sub eax, 12
  mov X, eax

  ; int Z = (8 * C + 5) / 25 - 5;
  xor edx, edx
  mov eax, C
  mov ebx, 8
  mul ebx
  add eax, 5
  mov ebx, 25
  div ebx
  sub eax, 5
  mov Z, eax
  ;dump_regs 3

  ; int D = 5 * Y / 4 - X - 10;
  xor edx, edx
  mov eax, Y
  mov ebx, 5
  mul ebx,
  mov ebx, 4
  div ebx
  sub eax, X
  sub eax, 10
  mov D, eax
  ;dump_regs 4

  ; int E = (11 * G + 20 + Z - X) % 30;
  mov eax, G
  mov ebx, 11
  mul ebx
  add eax, 20
  add eax, Z
  sub eax, X
  xor edx, edx
  mov ebx, 30
  div ebx
  mov E, edx
  ;dump_regs 5

  cmp dword E, 24
  jne after_e1
  inc dword E
  jmp after_e2
after_e1:
  cmp dword E, 25
  jne after_e2
  cmp dword G, 11
  jle after_e2
  inc dword E
after_e2:

  ; int N = 44 - E;
  mov eax, 44
  sub eax, E
  mov N, eax

  cmp dword N, 21
  jge after_n
  add dword N, 30
after_n:
  ; N = N + 7 - ((D + N) % 7);
  mov eax, N
  add eax, D
  xor edx, edx
  mov ebx, 7
  div ebx
  add dword N, 7
  sub N, edx
  dump_regs 6

  mov eax, d

  ; N is the nuber of day from March 1 to easter. Check if easter is in April.
  cmp dword N, 31
  jle in_march
  mov bl, N
  sub bl, 31
  mov [eax], bl
  mov word [eax + 2], 4
  jmp quit
in_march:
  mov bl, N
  mov [eax], bl
  mov word [eax + 2], 3
quit:
  ;leave
  ;ret
  popa
  mov eax, 0            ; return 0 back to C
  leave
  ret
