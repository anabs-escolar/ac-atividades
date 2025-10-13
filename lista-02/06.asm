.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 	# idade
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2	# tempo

#cond1:	idade >= 65	
	addi $10, $0, 65
	slt $11, $8, $10 	# 1 se tempo < 65
	bne $11, $0, cond2	# se não for 0,0 idade < 65, -> tempo
	j aposenta

cond2:	# tempo >= 40
	addi $10, $0, 40 
	slt $11, $9, $10 	# 1 se tempo < 40
	bne $11, $0, cond3	# se nao 0,0, tempo < 40,
	j aposenta
	
cond3:	# idade >= 60, tempo > 35
	addi $10, $0, 60
	slt $11, $8, $10
	bne $11, $0, nao_aposenta
	
	addi $10, $0, 36
	slt $11, $9, $10
	bne $11, $0, nao_aposenta	

aposenta:
	addi $2, $0, 11
	addi $4, $0, 'S'
	syscall 
	j fim


nao_aposenta:
	addi $2, $0, 11
	addi $4, $0, 'N'
	syscall

fim:
	addi $2, $0, 10
	syscall


