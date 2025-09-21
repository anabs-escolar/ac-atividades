.text

# num = soma_char
# num / 100 = cen_char, resto_dez
# resto_dez / 10 = dez_char, resto_uni
# soma_char = cen_char + dez_char + resto_uni

# Exemplo.
# 325 = 10
# 325 / 100 = 3, 25
# 25 / 10 = 2, 5
# 3+2+5 = 10 

main:	addi $2, $0, 5
	syscall
	
	add $8, $0, $2 # num
	
	addi $9, $0, 100
	div $8, $9
	
	mflo $11 # cen_char
	mfhi $10 # resto_dez
	
	addi $9, $0, 10
	div $10, $9 
	
	mflo $12 # dez_char
	mfhi $13 # resto_uni
	
	
	add $11, $11, $12
	add $11, $11, $13
	
	addi $2, $0, 1
	add $4, $0, $11
	syscall
	
	
	
	
	  