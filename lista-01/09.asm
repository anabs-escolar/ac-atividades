.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 60 # const 60
	
	div $8, $9
	mflo $10	# min
	mfhi $11	# resto, seg
	
	div $10, $9
	mflo $9		# hr
	mfhi $10	# min
	
	
	addi $2, $0, 1	# print int
	add $4, $0, $9
	syscall
	
	addi $2, $0, 11	# print char
	addi $4, $0, 58
	syscall
	
	addi $2, $0, 1
	add $4, $0, $10
	syscall
	
	addi $2, $0, 11
	addi $4, $0, 58
	syscall
	
	addi $2, $0, 1
	add $4, $0, $11
	syscall
	