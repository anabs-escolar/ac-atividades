# lê numeros != 0, if 0, print soma, end
.text
main:		

loop:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# cin >> n
	slt $15, $8, $0		# if (n<0) {
	
	bne $15, $0, loop	# continue 
				# } else break;
	
	beq $8, $0, print	# if (n==0) print;
	
	add $10, $10, $8  	
	j loop

print:	addi $2, $0, 1
	add $4, $10, $0
	syscall

fim: 	addi $2, $0, 10
	syscall