all:
	nasm -f elf math.asm
	nasm -f elf -d ELF_TYPE asm_io.asm
	gcc -m32 -o math math.o driver.c asm_io.o

run: all
	./math
