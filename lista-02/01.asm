.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	# Set Less Than
	slt $10, $8, $9
	# se (a < b) então 
	#	c = 1
	# senao 
	#	c = 0
	
	beq $10, $0, higher
	add $4, $0, $9
	j print
	
higher:	add $4, $0, $8

print: 	addi $2, $0, 1
	syscall
	
end:	addi $2, $0, 10
	syscall
	