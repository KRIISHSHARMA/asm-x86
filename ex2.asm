global _start ; global keyword is used to make an identifier accesible to the linker , _ before identifiers will create a label , used to name location in our code

section .data ; allows to inline data into the program that we can reference in code by name
   msg db "HELLOOOOOOOOOO!!" , 0x0a ; creating string of bits named msg which contains HELLO followed by 0x0a which is hex for 10 and code for new line char 
   len equ $ - msg ; determining the length of the string by subtracting the location of the start of the string from the location after the string 


section .text ; this is where the code should live
_start :  ; defines entry line for program
   mov eax , 4 ; set to 4 to denote that its set to sys_write call
   mov ebx , 1 ; file dec for stdout 
   mov ecx , msg ; bytes to write
   mov edx , len ; number of bytes to write
   int 0x80 ; this line performs an interupt , hex value is for system call
   mov eax , 1 ; sys_exit system call
   mov ebx , 0 ; exit status is 0
   int 0x80
