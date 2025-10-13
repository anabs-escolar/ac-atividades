.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2		# nota 1
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2		# nota 2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2		# faltas
	
	# calcular penalidade
	# Ex. 20 faltas = -40 pontos
	# penalidade = (faltas / 5) * 10
	
	addi $15, $0, 5
	div $10, $15
	mflo $11
	addi $15, $0, 10
	mul $11, $11, $15	# penalidade
	
	# Media Ponderada, pesos 2 e 3
	# media = (nota1 * 2 + nota2 * 3) / 2+3
	
	add $12, $8, $8
	addi $15, $0, 3
	mul $13, $9, $15
	
	addi $15, $0, 5
	add $14, $12, $13
	div $14, $15
	mflo $15		# media
	
	sub $14, $15, $11	# media_final = media - penalidade
	
	# SE media_final < 60 -> reprovado, SE NAO -> aprovado
	addi $12, $0, 60
	slt $12, $14, $12
	bne $12, $0, aprovado
	
	
	addi $13, $0, 'A'
	
	j print
	
aprovado:
	addi $13, $0, 'R'
	
print:
	addi $2, $0, 1
	add $4, $0, $15 # media
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	addi $2, $0, 1
	add $4, $0, $11 # penalidade
	syscall
	
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	addi $2, $0, 1
	add $4, $0, $14 # media final
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	add $4, $0, $13
	syscall
	
fim:
	addi $2, $0, 10
	syscall