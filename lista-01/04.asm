.text

main:	addi $2, $0, 5
	syscall
	
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	
	# calc: ($t0 + $t1)/2	
	add $8, $8, $2 	# $t0 = $t0 + $v0
	addi $9, $0, 2 	# const 2
	div $8, $9	# t0/t1
	
	addi $2, $0, 1
	mflo $4
	syscall
	
	