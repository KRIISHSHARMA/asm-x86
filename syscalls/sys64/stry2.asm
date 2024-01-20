global _start

_start :

   mov rax , 60 ; system call code for exit 
   mov rdi , 22 ; random exit code
   syscall
