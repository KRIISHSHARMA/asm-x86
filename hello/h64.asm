section .data
  hello_wld db "HELOOOOOOOOOO!!!!\n" , 0x0a
  len equ  $ - hello_wld

; ssize_t read(int fd, void *buf, size_t count);
section .text
 global _start

_start : 
  mov rax , 1 ; syscall 1 for write (64bit)
  mov rdi , 1 ; exit code random register syntax
  lea rsi , [hello_wld] ; loading effective address of hello_wld into rsi 
  mov rdx , len ; number of bytes to stdout , size_t count 
  syscall
  jmp exit


exit:
    mov rax , 60 ; syscall for 64 exit 
    xor rdi , rdi ; csa mai padha tha yaad kar 
    syscall 
