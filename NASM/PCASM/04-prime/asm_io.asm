%define NL 10

segment .data
        int_fmt         db  "%i", 0
        str_fmt         db  "%s", 0

segment .text
        extern  scanf, printf, getchar, putchar
        global  read_int, read_char
        global  print_int, print_char, print_string, print_nl

read_char:
        enter   4, 0
        pusha
        pushf

        call    getchar
        mov     [ebp-4], eax

        popf
        popa
        mov     eax, [ebp-4]
        leave

read_int:
        enter   4, 0
        pusha
        pushf

        lea     eax, [ebp-4]
        push    eax
        push    dword int_fmt
        call    scanf
        pop     ecx
        pop     ecx
        
        popf
        popa
        mov     eax, [ebp-4]
        leave
        ret

print_int:
        enter   0, 0
        pusha
        pushf

        push    eax
        push    dword int_fmt
        call    printf
        pop     ecx
        pop     ecx

        popf
        popa
        leave
        ret

print_string:
        enter   0, 0
        pusha
        pushf

        push    eax
        push    dword str_fmt
        call    printf
        pop     ecx
        pop     ecx

        popf
        popa
        leave
        ret
        ret

print_char:
        enter   0, 0
        pusha
        pushf

        push    eax
        call    putchar
        pop     ecx

        popf
        popa
        leave
        ret

print_nl:
        enter   0,0
        pusha
        pushf

        push    dword NL
        call    putchar
        pop     ecx

        popf
        popa
        leave
        ret

