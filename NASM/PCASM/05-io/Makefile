NASM=nasm
LD=ld

ASM_FILES := $(wildcard *.asm)
EXE_FILES := $(patsubst %.asm,%,$(ASM_FILES))

.PHONY: all run clean

all: $(EXE_FILES)

%: %.o
	$(LD) $< -o $@

%.o: %.asm
	$(NASM) -f elf64 $< -o $@

run: all
	./main

clean:
	rm $(EXE_FILES) *.o
