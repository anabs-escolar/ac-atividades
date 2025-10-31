.text
main:

while:
	addi $2, $0, 5		# int n
	syscall
	
	beq $2, $0, end		# if (n==0) end
	
	add $15, $0, $0		# int num_picos
	addi $24, $0, 2		# int i = 2
	add $25, $0, $2		# int check_loop
	
	addi $2, $0, 5		# cin >> H1
	syscall
	add $8, $0, $2		# H1
	
	addi $2, $0, 5		# cin >> H2
	syscall
	add $9, $0, $2		# H2
	
	add $10, $0, $8		# anterior = H1
	add $11, $0, $9	# atual	= H2
	
for_i:
	slt $14, $24, $25	# if (i<check_loop)
	beq $14, $0, end_for_i	
	
	addi $2, $0, 5
	syscall
	add $12, $0, $2		# next
	
	slt $13, $10, $11	# anterior < atual
	slt $14, $12, $11	# prox < atual
	
	beq $13, $0, check_min1
	beq $14, $0, check_min1
	j pico_soma1
	
check_min1:
	
	slt $13, $11, $10 	# atual < anterior
	slt $14, $11, $12 	# atual < prox

	beq $13, $0, pico_org1
	beq $14, $0, pico_org1
pico_soma1:
	addi $15, $15, 1	# pico++
	
pico_org1:

	add $10, $0, $11	# anterior = atual
	add $11, $0, $12 	# atual = prox
	addi $24, $24, 1	# i++
	j for_i
	
end_for_i:
	
	slt $13, $10, $11 	# anterior < atual
	slt $14, $8, $11 	# h1 < atual
	beq $13, $0, check_min2
	beq $14, $0, check_min2
	j pico_soma2

check_min2:
	slt $13, $10, $11	# atual < anterior
	slt $14, $10, $8	# atual < H1
	beq $13, $0, check_H1
	beq $14, $0, check_H1

pico_soma2:	
	addi $15, $15, 1	# pico++

check_H1:
	slt $13, $10, $8	# atual < H1
	slt $14, $8, $11	# H1 < H2
	
	beq $13, $0, check_minH1
	beq $14, $0, check_minH1
	j pico_soma3
	
check_minH1:

	slt $13, $8, $9 	# H1 < atual
	slt $14, $8, $11	# H1 < H2

	beq $13, $0, print
	beq $14, $0, print
	
pico_soma3:
	addi $15, $15, 1	# pico++
	
print:
	add $4, $0, $15		# print(pico)
	addi $2, $0, 1
	syscall

	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j while

end:	addi $2, $0, 10
	syscall