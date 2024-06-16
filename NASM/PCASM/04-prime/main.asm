%include "asm_io.inc"

segment .data
        prompt db       "Check if number is a prime: ", 0
        msg_isprime db  "Number is a prime", 0
        msg_notprime db "Number is not a prime", 0
        msg_error db    "Invalid input", 0

segment .bss
        number  resd    1

segment .text
        global  asm_main

asm_main:
        ; EBX   number n
        ; ECX   counter i

        enter   0,0
        pusha

        ; prompt number
        mov     eax, prompt
        call    print_string
        call    read_int
        mov     ebx, eax
        mov     ecx, eax

        cmp     eax, 1
        jle     error

loop:
        ; loop condition
        dec     ecx
        cmp     ecx, 1
        je      is_prime

        ; if (n % i == 0)
        mov     edx, 0
        mov     eax, ebx
        div     ecx
        cmp     edx, 0
        je      not_prime

        jmp     loop

is_prime:
        mov     eax, msg_isprime
        jmp     end

not_prime:
        mov     eax, msg_notprime
        jmp     end

error:
        mov     eax, msg_error
        jmp     end

end:
        call    print_string
        call    print_nl

        popa
        mov     eax, 0
        leave                     
        ret

