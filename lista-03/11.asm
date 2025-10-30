.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# num
	
	addi $10, $0, 11
	addi $11, $0, 13
	addi $12, $0, 17	
	
while:	div $8, $10
	mfhi $9
	beq $9, $0, print	# if (num % 11 == 0) print
	
	div $8, $11
	mfhi $9
	beq $9, $0, print	# if (num % 13 == 0) print
	
	div $8, $12
	mfhi $9
	beq $9, $0, print	# if (num % 17 == 0) print
	
	addi $8, $8, 1		# num++
	j while	

print:	addi $2, $0, 1
	add $4, $0, $8
	syscall
	
fim: 	addi $2, $0, 10
	syscall
	
