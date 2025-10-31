.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# int n linhas

	addi $9, $0, 1		# int i
	addi $11, $0, 1		# int num
	
for_i:	slt $15, $9, $8		# i < n linhas
	beq $15, $0, fim	# if (n>i) end
	
	addi $10, $0, 0		# int count

while:	slt $15, $10, $9	# count < i
	beq $15, $0, end_for_i 	# if (i>count) end1
	
	addi $12, $0, 0		# int qtd_divs = 0
	addi $13, $0, 1		# int d = 1
	
for_d:	
	slt $15, $11, $13	# d < num
	bne $15, $0, if_prime	# if (num>d) -> out of loop

	div $11, $13	
	mfhi $14		# n % d
	bne $14, $0, end_for_d	# if (n % d != 0) -> next loop

	addi $12, $12, 1	# qtd_divs++
		
end_for_d:
	addi $13, $13, 1	# d++
	j for_d

if_prime:
	addi $15, $0, 2
	bne $15, $12, cont_while 	# if (qtd != 2) -> next loop
	
	addi $2, $0, 1
	add $4, $0, $11		# cout >> num
	syscall
	
	addi $2, $0, 11
	addi $4, $0, ' '	# cout >> " "
	syscall
	
	addi $10, $10, 1	# count++

cont_while:
	addi $11, $11, 1	# num++
	j while
	
end_for_i:
	addi $9, $9, 1		# i++
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	j for_i


fim: 	addi $2, $0, 10
	syscall
