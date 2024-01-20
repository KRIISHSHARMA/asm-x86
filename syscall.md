# 4 types of Protected rings  
1. Ring 0 is were KERNEL lives
2. Ring 1 and 2 is for drivers
3. Ring 3 is User land , where regular user applications live , can't acces files , network , cant spawn new processes caused it can be a security disaster
   - But Ring 3 can ask Kernel for help since kernel can do pretty much anything
   - Another problem is that applications at Ring 3 cant change previlage level to Ring 0 which will again compermise rings concept
   - So some function is needed to call Kernel from user space which is also secure
   - This fuction/mechanism is called SYSCALLS/System calls
  
![image](https://github.com/KRIISHSHARMA/asm-x86/assets/86760658/83be4af2-185e-4025-a822-8010f3ff84a3)

[DOCUMENTATION FOR LINUX](https://github.com/torvalds/linux/blob/master/arch/x86/entry/entry_64_compat.S)
