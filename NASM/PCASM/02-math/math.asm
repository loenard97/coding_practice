%include "asm_io.inc"

segment .data
        prompt db       "Enter a number: ", 0
        msg_sqr db      "Number squared: ", 0
        msg_cub db      "Number cubed: ", 0
        msg_quot db     "Number / 100 quotient: ", 0
        msg_rem db      "Number / 100 remainder: ", 0
        msg_neg db      "Number negated: ", 0

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

        ; print input squared
        mov     eax, msg_sqr
        call    print_string
        mov     eax, [input]
        mul     eax
        call    print_int
        call    print_nl

        ; print input cubed
        mov     eax, msg_cub
        call    print_string
        mov     eax, [input]
        imul    eax, [input]
        imul    eax, [input]
        call    print_int
        call    print_nl

        ; print input / 100 quotient
        mov     eax, [input]
        cdq
        mov     ecx, 100
        idiv    ecx
        mov     ecx, eax
        mov     eax, msg_quot
        call    print_string
        mov     eax, ecx
        call    print_int
        call    print_nl

        ; print input / 100 remainder
        mov     eax, msg_rem
        call    print_string
        mov     eax, edx
        call    print_int
        call    print_nl

        ; print input negated
        mov     eax, msg_neg
        call    print_string
        mov     eax, [input]
        neg     eax
        call    print_int
        call    print_nl

        popa
        mov     eax, 0
        leave                     
        ret

