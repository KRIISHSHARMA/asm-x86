# asm-x86

- install nasm
``` sh
sudo apt install nasm
```
- create file
``` sh
nvim try.asm
```
- assmenble the prog into machine code
``` sh
nasm -f elf32 try.asm -o try.o
```
 - `elf 32 with f flag` : tells nasm to built a 32 bit object file (elf = executable and liniking format)

- building an executable from the object file
``` sh
ld -m elf_i386 try.o -o try
```
 - linker ld
 - using the m flag to specify its an x86 elf program
 - will result in try file which is our final executable program
- running
``` sh
./try
echo $?
```
