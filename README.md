# os

This project adheres to the Filesystem Hierarchy Standard (FHS).

To assemble into machine code:

nasm boot_sect.asm -f bin -o boot_sect.bin

To run:

qemu-system-i386 -drive file=boot_sect.bin,format=raw
