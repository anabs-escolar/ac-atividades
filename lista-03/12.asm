# Fn = Fn-1 + Fn-2
.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# int n

	addi $9, $0, 2		# int i = 2
	
	slt $15, $8, $9		# n < 2
	bne $15, $0, zero
	
	addi $2, $0, 1
	add $4, $0, $0
	syscall
	
	addi $2, $0, 11
	addi $4, $0, ' '
	syscall
		
	addi $2, $0, 1
	addi $4, $0, 1
	syscall
	
	addi $2, $0, 11
	addi $4, $0, ' '
	syscall
	
	subi $15, $8, 2
	
	beq $15, $0, fim
for:	
	slt $15, $9, $8		# i < n
	beq $15, $0, fim
	
	subi $10, $9, 1		# i-1
	subi $11, $9, 2		# i-2
	add $12, $10, $11	# i-1 + i-2
	
	addi $2, $0, 1
	add $4, $0, $12
	syscall			# print
		
	addi $2, $0, 11
	addi $4, $0, ' '
	syscall
	
	addi $9, $9, 1		# i++
	j for
	
zero:	
	addi $2, $0, 1
	add $4, $0, $0
	syscall
	j fim

fim: 	addi $2, $0, 10
	syscall
	