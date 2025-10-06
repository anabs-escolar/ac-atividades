.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	# Fazendo somas
	# Peso 3
	
	add $11, $8, $8		# x + x
	add $11, $11, $8	# (x + x) + x
	
	# Peso 5
	
	add $12, $9, $0		# y
	add $9, $9, $9		# y + y
	add $9, $9, $9		# y+y + y+y
	add $9, $9, $9		# y+y + y+y + y+y + y+y
	add $12, $12, $9	# y + y*8
	
	# Peso 15
	add $13, $10, $0	# z
	add $10, $10, $10	# z + z
	add $10, $10, $10	# z+z + z+z 
	add $10, $10, $10	# z+z + z+z + z+z + z+z
	add $10, $10, $10	# z+z + z+z + z+z + z+z + z+z + z+z + z+z + z+z
	sub $13, $10, $13
	
	addi $14, $0, 27
	
	add $15, $11, $12
	add $15, $15, $13
	
	div $15, $14
	
	addi $2, $0, 1
	mflo $4
	syscall
	
	