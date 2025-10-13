.text
main:	
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	# SE div 4
	# OU 100 e 400
	addi $9, $0, 400
	div $8, $9
	mfhi $10
	beq $10, $0, bissexto
	
	addi $9, $0, 4
	div $8, $9
	mfhi $10
	
	bne $10, $0, nao_bi # se resto != 0 -> nao bis
	
	# OU 100 e 400
	addi $9, $0, 100
	div $8, $9
	mfhi $10
	beq $10, $0, nao_bi	# se resto == 0 -> nao bis
	
bissexto:
	addi $2, $0, 11
	addi $4, $0, 'S'
	syscall
	j fim
	
nao_bi:
	addi $2, $0, 11
	addi $4, $0, 'N'
	syscall
	
fim:	
	addi $2, $0, 10
	syscall
	