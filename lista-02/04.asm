.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	# Verifica Igual
	sub $10, $8, $9
	beq $10, $0, equal
	
	# Se não Igual
	# Verifica Maior
	slt $10, $8, $9
	beq $10, $0, higher
	
	# SE A < B  
	add $11, $0, '<'
	j print

equal:	add $11, $0, '='
	j print
			
higher:	# SE A > B
	add $11, $0, '>'

print: 	addi $2, $0, 1
	add $4, $0, $8
	syscall
	
	addi $2, $0, 11
	add $4, $0, $11
	syscall
	
	addi $2, $0, 1
	add $4, $0, $9
	syscall
	
end:	addi $2, $0, 10
	syscall
	