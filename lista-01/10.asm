.text

main:	addi $2, $0, 12
	syscall
	
	add $8, $0, $2
	
	sub $8, $8, 32
	# na tabela ASCII, char - 32 resulta em seu maiusculo
	addi $2, $0, 11
	add $4, $0, $8
	syscall