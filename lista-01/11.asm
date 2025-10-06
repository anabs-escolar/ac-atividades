.text
main:	addi $2, $0, 5
	syscall
	
	add $8, $0, $2
	
	addi $9, $0, 100
	
	div $8, $9
	mflo $10	# cen
	mfhi $11
	
	addi $9, $0, 10
	
	div $11, $9
	mflo $11	# dez
	mfhi $12	# uni
	
	addi $2, $0, 1
	add $4, $0, $12
	syscall
	
	add $4, $0, $11
	syscall
	
	add $4, $0, $10
	syscall
	
			
	