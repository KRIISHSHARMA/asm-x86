global _start  ; global keyword is used to make an identifier accesible to the linker , _ before identifiers will create a label , used to name location in our code
_start :       ; defines entery line for program
     mov eax,1 ; moving int 1 to global register eax 
     mov ebx,42 ; moving int 1 to global register eax
     sub ebx,26 ; subs ad value in ebx 
     int 0x80 ; this line performs an interupt , hex value is for system call  
