.globl main
main:
	push $msg
	call puts
	
	pop %eax
	mov $7, %eax
	ret
.data
msg:
	.ascii 	"Hello World!"
