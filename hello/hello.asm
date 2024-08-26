section .text
    global _start   ;must be declared for linker (ld)

_start:             ;indicar al linker el punto de acceso
    mov edx, len    ;largo del mensaje que quiero mostrar
    mov ecx, msg    ;mensaje para escribir
    mov ebx, 1      ;file descriptor (stdout) indicar la salida
    mov eax, 4      ;system call number (sys_write)
    int 0x80        ;llamada al kernel

    mov eax, 1      ;system call number (sys_exit)
    int 0x80        ;llamada al kernel

section .data
msg db 'Hello World from Assembly Language', 0xa    ;string que se va a mostrar
len equ $ - msg     ;largo del string