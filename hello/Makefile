all: hello1

hello.o: hello.asm
		nasm -f elf64 hello.asm

hello1: hello.o
		ld -s -o hello1 hello.o