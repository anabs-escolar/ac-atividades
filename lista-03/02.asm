.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# num = ref
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2		# qtd
	
	addi $10, $0, 1		# count
	addi $11, $9, 1		# range = qtd + 1
	
mul3:	mul $12, $8, $10	# num * count
	addi $10, $10, 1	# i++
	j print
	
print: 	addi $2, $0, 1
	add $4, $0, $12		# print, num*count
	syscall
	
	addi $2, $0, 11
	add $4, $0, ' '
	syscall
	
	bne $10, $11, mul3
	
fim: 	addi $2, $0, 10
	syscall