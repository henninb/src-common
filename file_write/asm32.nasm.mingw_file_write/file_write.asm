BITS 32

SECTION .data
  read_mode db "w", 0
  ;mesg  db ">message_data<",13,10,0   ; new_line and end_of_string
;  mesg  db ">message_data<"   ; new_line and end_of_string
;  mesglen equ $-mesg

SECTION .text
  GLOBAL _fileClose
  GLOBAL _fileOpen
  GLOBAL _fileWrite
  EXTERN _fopen
  EXTERN _fclose
  EXTERN _write

; -------------------------------------------
; int file_close( File * );
; -------------------------------------------
_fileClose:
  push ebp              ; push the base pointer onto the stack
  mov ebp,esp           ; replace the base pointer with the stack pointer

  mov esi,[ebp+8]       ; get address of the first parm, (4 bytes * 2)
  push esi              ; push the address of the first parm onto onto the stack
  call _fclose
  add esp,4             ; fix the stack for the one parameter
  mov eax, 0            ; return 0 back to C
  pop ebp               ; pop the base pointer from the stack into ebp
  ret

; -------------------------------------------
; FILE *file_open( char * );
; -------------------------------------------
_fileOpen:
  push ebp              ; push the base pointer onto the stack
  mov ebp,esp           ; replace the base pointer with the stack pointer

  push dword read_mode  ; push the memory address of read_mode
  mov esi, [ebp + 8]       ; get address of the first parm, (4 bytes * 2)
  push esi              ; push the address of the first parm onto onto the stack
  call _fopen           ; call _printf
  add esp, 8             ; add 8 to the stack pointer because of the  (char *, char *)
                        ; return value is stored in eax (FILE *)
  pop ebp               ; pop the base pointer from the stack into ebp
  ret                   ; return control to the calling function

;----------------------------------------------
; void fileWrite( FILE *, char *, int length );
;----------------------------------------------
;%define ARRAY_SIZE dword [ebp + 8]
_fileWrite:
  push ebp
  mov ebp,esp

  mov esi, [ebp + 16]      ; get address of the third parm, (4 bytes * 4)
  push esi                 ; push the value of the third parm onto the stack
  mov esi, [ebp + 12]      ; get address of the second parm, (4 bytes * 3)
  push esi            ; push the value of the second parm onto onto the stack
  push dword 3        ; push 1 = stdout, 2 = stderr, 3 = first_file_handle
  mov eax, 4          ; 4 = write system call
  call _write
  add esp, byte 12    ; clean stack by adjusting esp 3 (parameters) pushed * 4 bytes

                      ; the return value should be stored in eax
  mov eax, 0            ; return 0 back to C
  ;mov esp,ebp
  pop ebp
  ret
