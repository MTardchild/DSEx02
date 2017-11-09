%include "io.inc"

section .data
Hallo DB "HelloWorld"
A DD 12h
B DD 1h
ERG DD 0h

%macro CALCULATE 0
    mov EAX, [A]
    mov EBX, 12
    add EAX, EBX
    add EAX, [B]
    mov [ERG], EAX 
%endmacro

%macro OUTPUT 0
    PRINT_STRING Hallo
    PRINT_DEC 4, EAX
    PRINT_DEC 4, ERG
%endmacro

section .text
global CMAIN
CMAIN:
    mov ebp, esp
    xor eax, eax
    CALCULATE
    OUTPUT
    xor eax, eax
    ret