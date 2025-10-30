.text
main:	addi $8, $0, 0
	addi $9, $0, 10
	j print

loop: 	addi $8, $8, 1

print:	addi $2, $0, 1
	add $4, $0, $8
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	bne $8, $9, loop

fim: 	addi $2, $0, 10
	syscall