section .data
        buffer  db      1

section .text
        global _start

_start:
        ; read char
        call    read_char

        ; check EOF or error
        cmp     rax, 0
        je      eof
        cmp     rax, -1
        je      error

        call    print_char

        mov     rax, 0x3c
        xor     rdi, rdi
        xor     rsi, rsi
        syscall
        test    rax, 0x8000
        jnz     eof

        jmp     _start

eof:
        ; exit
        mov     rax, 60
        xor     rdi, rdi
        syscall

error:
        ; exit error
        mov     rax, 60
        mov     rdi, 1
        syscall

read_char:
        mov     rax, 0
        mov     rdi, 0
        mov     rsi, buffer
        mov     rdx, 1
        syscall

        ret

print_char:
        mov     rax, 1
        mov     rsi, buffer
        mov     rdx, 1
        syscall

        ret
