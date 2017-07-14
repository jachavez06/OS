# OS

~~This project adheres to the Filesystem Hierarchy Standard (FHS).~~
Structure put on hiatus until project becomes more complete. 

## Objectives 
* Bootloader

## Building

To assemble into machine code:
```bash
nasm boot_sect.asm -f bin -o boot_sect.bin
```

To run:
```bash
qemu-system-i386 -drive file=boot_sect.bin,format=raw
```
