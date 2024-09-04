section .data       ;section to store variables
    welcome_msg db 0dh, 0ah, 0dh, 0ah, " ************************* Welcome to the calculator ************************* ", 0dh, 0ah
    welcome_length equ $-welcome_msg

section .text
    global _start

_start:
    