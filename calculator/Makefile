all: calculator

calculator.o: calculator.asm
		nasm -f elf64 calculator.asm

calculator: calculator.o
		ld -s -o calculator calculator.o