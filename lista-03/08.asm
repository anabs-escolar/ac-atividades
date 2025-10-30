# read numbers != 0, return higher and lower if cin = 0 
.text
main:		
loop:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# cin >> n1

	beq $8, $0, print
	
	slt $15, $8, $9		# if (n < menor) 1 else 0
	bne $15, $0, menor	# 1 != 0, menor
	
	slt $15, $10, $8	# if (maior < n)
	bne $15, $0, maior	
			
	j loop
	
menor: 	add $9, $8, $0
	j loop
	
maior: 	add $10, $8, $0
	j loop
	
print:	addi $2, $0, 1
	add $4, $10, $0
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	addi $2, $0, 1
	add $4, $9, $0
	syscall
	
fim: 	addi $2, $0, 10
	syscall