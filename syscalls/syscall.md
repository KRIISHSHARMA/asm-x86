# 4 types of Protected rings  
1. Ring 0 is were KERNEL lives
2. Ring 1 and 2 is for drivers
3. Ring 3 is User land , where regular user applications live , can't acces files , network , cant spawn new processes caused it can be a security disaster
   - But Ring 3 can ask Kernel for help since kernel can do pretty much anything
   - Another problem is that applications at Ring 3 cant change previlage level to Ring 0 which will again compermise rings concept
   - So some function is needed to call Kernel from user space which is also secure
   - This fuction/mechanism is called SYSCALLS/System calls
  
![image](https://github.com/KRIISHSHARMA/asm-x86/assets/86760658/83be4af2-185e-4025-a822-8010f3ff84a3)

- syntax (36):
``` sh
 * Arguments:
 * eax  system call number
 * ecx  return address
 * ebx  arg1
 * ebp  arg2	(note: not saved in the stack frame, should not be touched)
 * edx  arg3
 * esi  arg4
 * edi  arg5
 * esp  user stack
 * 0(%esp) arg6
```

 - syntax (64) :
``` sh
* Registers on entry:
 * rax  system call number
 * rcx  return address
 * r11  saved rflags (note: r11 is callee-clobbered register in C ABI)
 * rdi  arg0
 * rsi  arg1
 * rdx  arg2
 * r10  arg3 (needs to be moved to rcx to conform to C ABI)
 * r8   arg4
 * r9   arg5
 * (note: r12-r15, rbp, rbx are callee-preserved in C ABI)
 *
 * Only called from user space.
```

- [DOCUMENTATION FOR LINUX](https://github.com/torvalds/linux/blob/master/arch/x86/entry/entry_64_compat.S)
- [syscall for 32 bit registers](https://github.com/torvalds/linux/blob/master/arch/x86/entry/syscalls/syscall_32.tbl)
- [syscall for 64 bit registers](https://github.com/torvalds/linux/blob/master/arch/x86/entry/syscalls/syscall_64.tbl)
