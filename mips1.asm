.text

main:	addi $2, $0, 5
	syscall 
	add $8, $0, $2

	addi $2, $0, 5
	syscall 
	add $9, $0, $2

	add $10, $8, $9
	
	add $4, $0, $10
	addi  $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'A'
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall
	
	# addi $8, $0, 5
	# addi $9, $0, 6
	# addi $10, $0, 3
	# addi $11, $0, 1
	
	# add $20, $8, $9
	# add $20, $20, $10
	# add $20, $20, $11
	
	
	