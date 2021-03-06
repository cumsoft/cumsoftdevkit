;***************************************************************
;
; Program: Hello_Cumsoft_nasm
; Date: 02/08/2022
; Author: Cumsoft
; Goal: A simple hello world program in x86 assembly
;        
;
; 
;
;
;***************************************************************
section .text

    global _start

_start:

        ; write our string to stdout.

        mov     edx,len   ; third argument: message length.
        mov     ecx,msg   ; second argument: pointer to message to write.
        mov     ebx,1     ; first argument: file handle (stdout).
        mov     eax,4     ; system call number (sys_write).
        int     0x80      ; call kernel.

        ; and exit.

    mov ebx,0     ; first syscall argument: exit code.
        mov     eax,1     ; system call number (sys_exit).
        int     0x80      ; call kernel.

section .data

msg     db      "Hello Cumsoft",0xa      ; the string to print.
len     equ     $ - msg                  ; length of the string.
