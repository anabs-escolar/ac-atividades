# while (b != 0) {
#   int temp = b;
#   b = a % b;
#   a = temp;
# }
# return a;
.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# int a

	addi $2, $0, 5
	syscall
	add $9, $0, $2		# int b

	addi $10, $0, 0		# int temp
while:	 
	add $10, $0, $9		# temp = b
	
	div $8, $9
	mfhi $9			# b = a % b
	
	add $8, $0, $10		# a = temp
	
	beq $9, $0, print	# return, b!=0
	j while

print:	addi $2, $0, 1
	add $4, $0, $8
	syscall
	
fim: 	addi $2, $0, 10
	syscall