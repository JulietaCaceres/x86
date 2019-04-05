#include <sys/syscall.h>

.globl main
main:
        push $msg
	call strlen
	mov %eax, %edx

	mov $SYS_write, %eax   
        mov $1, %ebx           
        mov $msg, %ecx         
        int $0x80

        mov $SYS_exit, %eax
        mov $7, %ebx
        int $0x80

.data
msg:
        .ascii "Hello, world!\n"
