.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# int a
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2		# int b
	
	add $10, $0, $8		# int n = a
for1:
	slt $15, $9, $10	# b < n
	beq $15, $0, fim	# if (n > b) -> fim
	
	add $11, $0, $0		# int qtd_divs = 0
	addi $12, $0, 1		# int d = 1
for2: 	
	slt $15, $10, $12	# n < d
	bne $15, $0, prime	# if (n > d) -> check_prime

	div $10, $12	
	mfhi $14		# n % d
	
	bne $14, $0, cont_for2	# if (n % d != 0) -> next loop

	addi $11, $11, 1	# qtd_divs++
	
cont_for2:
	addi $12, $12, 1	# d++
	j for2

prime:
	addi $15, $0, 2
	bne $15, $11, cont_for1	# if (qtd != 2) -> next loop
	
	addi $2, $0, 1
	add $4, $0, $10		# cout >> qtd
	syscall
	
	addi $2, $0, 11
	addi $4, $0, ' '	# cout >> " "
	syscall

cont_for1:
	addi $10, $10, 1	# n++
	j for1

fim: 	addi $2, $0, 10
	syscall