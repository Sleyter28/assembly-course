section .data
    scan_format db "%d", 0
    printf_format db "Input %d array values",10,13,0

section .text
    global array_sum
    extern printf, scanf

array_sum:
    enter 0,0
    mov ECX, [EBP+12]           ;copy array size to ECX
    push ECX                    ;push array size
    push dword printf_format
    call printf
    add ESP, 8                  ;clear the stack

    mov EDX, [EBP+8]            ;copy array pointer to EDX
    mov ECX, [EBP+12]           ;copy array size to ECX

read_loop:
    push ECX
    push EDX
    push dword scan_format
    call scanf
    add ESP, 4                  ;clear the stack
    pop EDX                     ;restore array pointer
    pop ECX                     ;restore loop count
    add EDX, 4                  ;update array pointer
    dec ECX
    jnz read_loop
    mov EDX, [EBP+8]            ;copy array pointer to EDX
    mov ECX, [EBP+12]           ;copy array size to ECX
    sub EAX, EAX                ;EAX = 0 (EAX keeps the sum)

add_loop:
    add EAX, [EDX]
    add EDX, 4                  ;Update array pointer
    dec ECX
    jnz add_loop
    leave
    ret
