nasm -f bin bootloader.asm -o bootloader.bin
nasm -f elf64 ExtendedProgram.asm -o ExtendedProgram.o
ld -Ttext 0x7e00 --oformat binary ExtendedProgram.o -o ExtendedProgram.bin
copy /b bootloader.bin+ExtendedProgram.bin>OS-image.bin
