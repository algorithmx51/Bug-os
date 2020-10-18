nasm -f bin bootloader.asm -o bootloader.bin
nasm -f elf64 ExtendedProgram.asm -o ExtendedProgram.o
ld -Ttext 0x7e00 --oformat binary ExtendedProgram.bin
cat bootloader.bin ExtendedProgram.bin > OS-image.bin

# how to run --- qemu-system-x86_64 OS-image.bin
