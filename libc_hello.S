.globl main


main:
        // Put the length of the message in the stack through the call to strlen
       	push $msg
	call strlen

	push $msg
        push $1

        // No declaration needed; asm assumes symbols always exist.
        call write
	
	push $7
	call _exit

.data
msg:
        .ascii "Hello, world!\n"


