.globl main


main:
        // Put the length of the message in the stack through the call to strlen
       	push $msg
	call strlen
	push %eax	
	push $msg
        push $1
	push $posicion_de_retorno
        // No declaration needed; asm assumes symbols always exist.
        jmp write

posicion_de_retorno:	
	push $7
	call _exit

.data

msg:
	.ascii "Hello, world!\n"

