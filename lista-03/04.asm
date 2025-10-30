.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# inicio inter
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2		# fim inter
	
	add $10, $0, $8		# i = inicio
	addi $11, $0, 2		# div

loop: 	div $10, $11
	mfhi $12
	
	bne $0, $12, prox 	# se hi!=0, prox 
	
print: 	addi $2, $0, 1
	add $4, $0, $10
	syscall
	
	addi $2, $0, 11
	add $4, $0, ' '
	syscall

prox:	addi $10, $10, 1	# i++
	slt $15, $9, $10	# se inter_fim < i -> 1, else -> 0
	bne $15, $0, fim	# terminou
	j loop

fim:	addi $2, $0, 10
	syscall
	
