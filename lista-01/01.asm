.text

main:	addi $2, $0, 5 # syscall para input int
	syscall

	add $4, $2, $2 # dobro em $a0
	
	addi $2, $0, 1 # syscall para print int
	syscall
	