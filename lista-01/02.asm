.text

main:	addi $2, $0, 5 # syscall para input int
	syscall

	mul $4, $2, $2 # ao quadrado em $a0
	
	addi $2, $0, 1 # syscall para print int
	syscall
	