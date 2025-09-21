.text

main:	addi $2, $0, 5
	syscall
	
	add $8, $0, $2
	addi $9, $0, 1000
	
	div $8, $9
	mflo $10 	# mil
	mfhi $11
	
	addi $9, $0, 100
	
	div $11, $9
	mflo $11	# cen
	mfhi $12
	
	addi $9, $0, 10
	
	div $12, $9
	mflo $12	# dez
	mfhi $13	# uni
	
	# printando num
	addi $2, $0, 1
	add $4, $0, $13
	syscall
	
	addi $2, $0, 11
	addi $4, $0, 10 # ASCII '\n'
	syscall
	
	addi $2, $0, 1
	add $4, $0, $12
	syscall
	
	addi $2, $0, 11
	addi $4, $0, 10 # ASCII '\n'
	syscall
	
	addi $2, $0, 1
	add $4, $0, $11
	syscall
	
	addi $2, $0, 11
	addi $4, $0, 10 # ASCII '\n'
	syscall
	
	addi $2, $0, 1
	add $4, $0, $1
	syscall
	
	addi $2, $0, 11
	addi $4, $0, 10 # ASCII '\n'
	syscall
	
	
	
	
	
	
	