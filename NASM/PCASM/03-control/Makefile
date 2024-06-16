all:
	nasm -f elf control.asm
	nasm -f elf -d ELF_TYPE asm_io.asm
	gcc -m32 -o control control.o driver.c asm_io.o

run: all
	./control
