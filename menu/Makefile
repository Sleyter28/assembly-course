all: mainm

menu.o: menu.asm
		nasm -f elf64 menu.asm

mainm: menu.o
		ld -s -o mainm menu.o