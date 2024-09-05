section .data                                   ;Data segment
    userMsg db 'Por favor, ingrese un numero: '
    lenUserMsg equ $-userMsg
    displayMsg db 'El numero que ingreso fue: '
    lenDisplayMsg equ $-displayMsg


section .bss
    inputNumber resb 5

section .text                                   ;Code segment
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, userMsg
    mov edx, lenUserMsg
    int 80h

    ;Leer y almacenar el valor leido
    mov eax, 3
    mov ebx, 2
    mov ecx, inputNumber
    mov edx, 5                          ;5 bytes (numeric, 1 para el signo) de la informacion
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, displayMsg
    mov edx, lenDisplayMsg
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, inputNumber
    mov edx, 5
    int 80h

    ;Terminar ejecucion
    mov eax, 1
    mov ebx, 0
    int 80h
