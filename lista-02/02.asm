.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	srl $10, $8, 31
	
	beq $10, $0, pos 	# positivo
	
	mul $11, $8, $8
	j print
				
pos:	add $11, $8, $8

print: 	addi $2, $0, 1
	add $4, $0, $11
	syscall
	
end: 	addi $2, $0, 10
	syscall
	