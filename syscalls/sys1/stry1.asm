global _start 




_start : 
    mov eax , 1 ; syscall number 1 (exit) goes into eax register 
    mov ebx , 42 ; taking exit code as 42 into ebx register 
    int 0x80 ; issue an interupt 

