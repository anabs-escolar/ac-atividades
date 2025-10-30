.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# int n

	addi $9, $0, 0		# int i
	
	addi $11, $0, 1		# int m
	addi $12, $0, 1		# int count

for1:	slt $15, $9, $8		# i < n
	beq $15, $0, fim
	
	addi $10, $0, 0		# int j
	
for2:	slt $15, $10, $11	# j < m
	beq $15, $0, cont_for1
	
	addi $2, $0, 1
	add $4, $0, $12
	syscall
	
	addi $2, $0, 11
	addi $4, $0, ' '
	syscall
	
	addi $12, $12, 1	# count++
	addi $10, $10, 1	# j++
	j for2
	
cont_for1:
	addi $11, $11, 1	# m++
	addi $9, $9, 1		# i++
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	j for1


fim: 	addi $2, $0, 10
	syscall