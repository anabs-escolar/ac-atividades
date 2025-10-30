# soma de dez valores n
.text
main:	addi $9, $0, 0		# int i		
	addi $10, $0, 10	# i < 10

loop:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# cin >> n
	
	add $11, $11, $8  	
	
	addi $9, $9, 1		# i++
	slt $15, $9, $10	# i < 10
	bne $15, $0, loop

print:	addi $2, $0, 1
	add $4, $11, $0
	syscall

fim: 	addi $2, $0, 10
	syscall