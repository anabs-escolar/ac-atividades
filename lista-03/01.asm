.text
main:	addi $9, $0, 3
	addi $10, $0, 1		# count
	addi $11, $0, 11	# range
	
mul3:	mul $12, $9, $10	# num * count
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