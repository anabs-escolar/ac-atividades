.text

main:	addi $2, $0, 5
	syscall
	add $8, $0, $2	# hr
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2	# min
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # seg
	
	# hr * 3600
	addi $11, $0, 3600
	mul $8, $8, $11
	# min * 60
	addi $11, $0, 60
	mul $9, $9, $11
	# hr *3600 + min *60 + seg
	add $10, $10, $9
	add $10, $10, $8
	
	addi $2, $0, 1
	add $4, $0, $10
	syscall
