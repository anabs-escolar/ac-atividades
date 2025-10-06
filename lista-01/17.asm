.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	# media aritimetica
	addi $10, $0, 2
	add $11, $9, $8
	div $11, $10
	
	mflo $12
	mfhi $13
	
	# decimal = (resto*10)/quantidade de numeros
	addi $10, $0, 10
	mul $14, $13, $10
	addi $10, $0, 2
	div $14, $10
	
	mflo $14
	
	addi $2, $0, 1
	add $4, $0, $12
	syscall 
	
	addi $2, $0, 11
	addi $4, $0, ','
	syscall
	
	addi $2, $0, 1
	add $4, $0, $14
	syscall
	
	