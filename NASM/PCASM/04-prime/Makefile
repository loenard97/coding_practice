all:
	nasm -f elf main.asm
	nasm -f elf -d ELF_TYPE asm_io.asm
	gcc -m32 -o main main.o driver.c asm_io.o

run: all
	./main
