%include "asm_io.inc"

segment .data
        prompt db       "Enter a number: ", 0
        msg_gz db       "Number is greater zero", 0
        msg_lz db       "Number is lesser zero", 0
        msg_eq db       "Number is equal zero", 0

segment .bss
        input  resd 1

segment .text
        global  asm_main

asm_main:
        enter   0,0
        pusha

        ; prompt input
        mov     eax, prompt
        call    print_string
        call    read_int
        mov     [input], eax

        ; compare against zero
        cmp     eax, 0
        je      equal
        jg      greater
        jl      lesser
equal:
        mov     eax, msg_eq
        jmp     print
greater:
        mov     eax, msg_gz
        jmp     print
lesser:
        mov     eax, msg_lz
        jmp     print

print:
        ; print answer
        call    print_string
        call    print_nl

        popa
        mov     eax, 0
        leave                     
        ret

