all: calculatorLib

calculator.o: calculator.asm
		nasm -f elf64 calculator.asm

calculatorLib: calculator.o
		ld -s -o calculatorLib calculator.o