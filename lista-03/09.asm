# read n numbers, print highier, how many high's
.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# n

	addi $11, $0, 0		# contador = 0
    	addi $10, $0, -1       	# maior = -1
    	addi $14, $0, 1       	# i = 1

loop:	addi $2, $0, 5
	syscall
	add $9, $0, $2		# num
	
	slt $15, $10, $9	# if (maior < num) 1 else 0
	bne $15, $0, maior	# 1 != 0, maior

prox: 	addi $14, $14, 1	# i++
	slt $15, $8, $14	# if (n < i)
	bne $15, $0, print	
	j loop
# $10 = maior
maior:	add $10, $0, $9
	addi $11, $11, 1	# count++
	j prox
	
print: 	addi $2, $0, 1
	add $4, $10, $0
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	addi $2, $0, 1
	add $4, $11, $0
	syscall
	
fim: 	addi $2, $0, 10
	syscall
	
