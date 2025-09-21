.text

main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 # salva no $t0 
	
	addi $2, $0, 5
	syscall
	mul $8, $8, $2 # salva no $t0 = $t0+$t0
	
	addi $2, $0, 1
	add $4, $0, $8 # salva $t0 = $a0
	syscall