BITS 32

SECTION .data
  read_mode db "r", 0

SECTION .text
  GLOBAL _file_close
  GLOBAL _file_open
  GLOBAL _file_getc
  EXTERN _fopen
  EXTERN _fclose
  EXTERN _fgetc

; -------------------------------------------
; int file_close( File * );
; -------------------------------------------
_file_close:
  push ebp              ; push the base pointer onto the stack
  mov ebp,esp           ; replace the base pointer with the stack pointer
  mov esi,[ebp+8]       ; get address of the first parm, (4 bytes * 2)
  push esi              ; push the address of the first parm onto onto the stack
  call _fclose
  add esp,4             ; fix the stack
  mov eax, 0            ; return 0 back to C
  pop ebp               ; pop the base pointer from the stack into ebp
  ret

; -------------------------------------------
; FILE *file_open( char *, char * );
; -------------------------------------------
_file_open:
  push ebp              ; push the base pointer onto the stack
  mov ebp,esp           ; replace the base pointer with the stack pointer
  push dword read_mode  ; push the memory address of read_mode
  mov esi,[ebp+8]       ; get address of the first parm, (4 bytes * 2)
  push esi              ; push the address of the first parm onto onto the stack
  call _fopen           ; call _printf
  add esp,8             ; add 8 to the stack pointer because of the  (char *, char *)
                        ; return value is stored in eax (FILE *)
  pop ebp               ; pop the base pointer from the stack into ebp
  ret                   ; return control to the calling function

; -------------------------------------------
; char * file_getc( FILE * );
; -------------------------------------------
_file_getc:
  push ebp              ; push the base pointer onto the stack
  mov ebp,esp           ; replace the base pointer with the stack pointer

  mov esi,[ebp+8]       ; get address of the first parm, (4 bytes * 2)
  push esi
  call _fgetc
  add esp, 4

  pop ebp          ; pop the base pointer from the stack into ebp
  ret              ; return control to the calling function
