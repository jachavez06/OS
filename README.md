# OS

My adventure to build an OS from scratch. Most of the code is written in either Assembly or C. 

## Objectives 
* Boot Sector

## Building

To assemble into machine code:
```bash
nasm boot_sect.asm -f bin -o boot_sect.bin
```

To run:
```bash
qemu-system-i386 -drive file=boot_sect.bin,format=raw
```
