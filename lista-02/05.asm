.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	addi $11, $0, 1
	mul $8, $8, $11
	
	addi $11, $0, 2
	mul $9, $9, $11
	
	addi $11, $0, 3
	mul $10, $10, $11
	
	add $12, $8, $9
	add $12, $12, $10
	
	addi $11, $0, 6
	
	div $12, $11
	mflo $12
	
	# Verifa maior 60
	# Se (media == 60)
	subi $13, $12, 60
	beq $13, $0, equal
	
	# Se media > 60
	srl $13, $13, 31
	beq $13, $0, higher
	
	addi $14, $0, 'R'
	j print
	
equal:	addi $14, $0, 'A'
	j print
	
higher:	addi $14, $0, 'A'

print:	addi $2, $0, 1
	add $4, $0, $12
	syscall

	# printando chars
	addi $2, $0, 11
	
	add $4, $0, '\n'
	syscall
	
	add $4, $0, $14
	syscall
	
end:	addi $2, $0, 10
	syscall
	 