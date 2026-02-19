.data
.text
main: 
	lui $8, 0x1001
	addi $9, $0, 0		# i = 0

for_cin:
	beq $9, 10, soma 
	
	addi $2, $0, 5
	syscall
	sw $2, 0($8) 
	
	addi $8, $8, 4		# +4 bytes
	addi $9, $9, 1		# i++	
	j for_cin
	
soma:
	lui $8, 0x1001
	lw $10, 0($8)		# a[0]
	lw $11, 4($8)		# a[1]
	
	add $12, $10, $11	# maior_soma = a[0] + a[1]
	addi $13, $0, 0		# posi = 0
	addi $9, $0, 1		# i = 1

for_i:
	beq $9, 9, print
	
	lui $8, 0x1001		# &a[0]
	sll $14, $9, 2		# i*4
	add $8, $8, $14		# &a[i]
	
	lw $10, 0($8)		# a[i]
	lw $11, 4($8)		# a[i+1]
	
	add $15, $10, $11	# soma = a[i] + a[i+1]
	
	beq $15, $12, end_for_i
	
	sub $24, $15, $12	# soma - maior
	srl $24, $24, 31	# sinal
	
	bne $24, $0, end_for_i	# se sinal = 0, pula
	
	add $12, $0, $15
	add $13, $0, $9		# posi = i
	
end_for_i:
	addi $9, $9, 1		# i++
	j for_i
	
print:
	lui $8, 0x1001		
	sll $14, $13, 2		# posi*4
	add $8, $8, $14		# &a[posi]
	
	lw $4, 0($8)
	addi $2, $0, 1
	syscall
	
	
	addi $2, $0, 11
	addi $4, $0, '+'
	syscall
	
	lw $4, 4($8)
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '='
	syscall
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	addi $2, $0, 11
	addi $4, $0, 'p'
	syscall
	
	addi $2, $0, 1
	add $4, $0, $13
	syscall
	
