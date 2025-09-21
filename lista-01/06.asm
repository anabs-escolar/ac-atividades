.text

# int -> str
# Ex. 9 -> '009'
main:	addi $2, $0, 5
	syscall
	
	add $8, $0, $2
	addi $9, $0, 100
	
	div $8, $9
	mflo $10 # centena
	mfhi $11 # resto_dezena
	
	# 48 é o código ASCII para '0'
	# somamos 48 ao quociente
	# Ex. 48 + 0 = '0', 48 + 2 = '2'
	addi $10, $10, 48
	addi $2, $0, 11
	add $4, $0, $10
	syscall
	
	addi $9, $0, 10
	div $11, $9
	mflo $10
	mfhi $11
	
	addi $10, $10, 48
	add $4, $0, $10
	syscall
	
	addi $11, $11, 48
	add $4, $0, $11
	syscall
	
	