all:
	nasm -f elf first.asm
	nasm -f elf -d ELF_TYPE asm_io.asm
	gcc -m32 -o first first.o driver.c asm_io.o

run: all
	./first
