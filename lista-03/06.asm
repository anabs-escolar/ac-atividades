# soma de dez valores n, termina qnd input = -n
.text
main:		

loop:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# cin >> n
	
	add $10, $10, $8  	
	
	slt $15, $8, $0		# n < 0
	bne $15, $0, print
	j loop

print:	addi $2, $0, 1
	add $4, $10, $0
	syscall

fim: 	addi $2, $0, 10
	syscall