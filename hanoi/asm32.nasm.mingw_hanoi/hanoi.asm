;
; The Towers Of Hanoi
; x86 Assembly
; Copyright (C) 1998 Amit Singh. All Rights Reserved.
; http://hanoi.kernelthread.com
;
; Tested under nasm 0.97
;

; N, the number of disks, is passed to main as argv[1]
; No error checking (validating arguments, for example) is performed

; Use `nasm -f elf <thisfile> -o hanoi' to get a 32-bit ELF binary
;
BITS    32

GLOBAL    main

; We shall be using the following functions from the C library
;
EXTERN    atoi
EXTERN    printf

SECTION    .text
main:
    push    ebp
    mov    ebp,esp
    mov    eax,[ebp+12]    ; argv
    add    eax,0x4        ; argv+1
    mov    edx,[eax]    ; *(argv+1)
    push    dword edx
    call    atoi        ; atoi(argv[1])
    add    esp,0x4

    push    dword 0x2    ; setup stack for dohanoi
    push    dword 0x1    ; dohanoi(n, to from, using)
    push    dword 0x3
    push    dword eax
    call    dohanoi
    add    esp,16
    mov    esp,ebp
    pop    ebp
    ret

dohanoi:
    push    ebp
    mov    ebp,esp
    mov    eax,[ebp+8]
    cmp    eax,0x0
    jle    done
    dec    eax
    push    dword [ebp+12]    ; stack for first recursive invocation
    push    dword [ebp+16]
    push    dword [ebp+20]
    push    dword eax
    call    dohanoi
    add    esp,16
    push    dword [ebp+16]    ; a disk moved, so print it
    push    dword [ebp+12]
    call    moveit
    add    esp,8
    mov    eax,[ebp+8]
    dec    eax
    push    dword [ebp+16]    ; stack for second recursive invocation
    push    dword [ebp+20]
    push    dword [ebp+12]
    push    dword eax
    call    dohanoi
    add    esp,16
done:
    mov    esp,ebp
    pop    ebp
    ret

moveit:
    push    ebp
    mov    ebp,esp
    push    dword [ebp+8]
    push    dword [ebp+12]
    push    dword movestr
    call    printf
    add    esp,0xc
    mov    esp,ebp
    pop    ebp
    ret

SECTION    .data
movestr db "move %d --> %d"
    db 10, 0
