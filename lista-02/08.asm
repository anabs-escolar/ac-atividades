# dia > 0, dia < 32, mes > 0, mes < 13, ano > 0

.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2		# dia
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2		# mes
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2		# ano
	
	addi $11, $0, 32
	
	slt $12, $8, $11	# se dia < 32 -> 1, senao 0
	beq $12, $0, nao_valido

	addi $11, $0, 13
	
	slt $12, $9, $11	# se mes < 13 -> 1, senao 0
	beq $12, $0, nao_valido
	
	sub $11, $0, $10	#  0 - ano → se ano negativo, sinal=1
	srl $11, $11, 31	# vê sinal
	beq $11, $0, nao_valido	# se sinal = 0
	 
valido:
	addi $2, $0, 11
	addi $4, $0, 'S'
	syscall
	j fim
	
nao_valido:
	addi $2, $0, 11
	add $4, $0, 'N'
	syscall
	
fim:
	addi $2, $0, 10
	syscall

	
 	