all: mainMenu

menu.o: menu.asm
		nasm -f elf64 menu.asm

mainMenu: menu.o
		ld -s -o mainMenu menu.o