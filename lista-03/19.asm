.text
main:	
while:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# int K
	
	beq $8, $0, end

	addi $2, $0, 5
	syscall
	add $9, $0, $2		# int N

	addi $2, $0, 5
	syscall
	add $10, $0, $2		# int M
	
	addi $11, $0, 0		# int i = 0
for:
	slt $15, $11, $8	# if (i<K)
	beq $15, $0, while
	
	addi $2, $0, 5
	syscall
	add $12, $0, $2		# int X

	addi $2, $0, 5
	syscall
	add $13, $0, $2		# int Y
	
	beq $9, $12, DV		# N == X
	beq $10, $13, DV	# M == Y
	
	# X > N e Y > M
    	slt $15, $9, $12       	# 1 se N < X
    	slt $14, $10, $13       # 1 se M < Y
    	and $15, $15, $14
    	bne $15, $0, NE

    	# X < N e Y > M
    	slt $15, $12, $9       	# 1 se X < N
    	slt $14, $10, $13       # 1 se M < Y
    	and $15, $15, $14
    	bne $15, $0, NO

    	# X > N e Y < M
    	slt $15, $9, $12       # N < X
    	slt $14, $13, $10       # Y < M
    	and $15, $15, $14
    	bne $15, $0, SE

    	# X < N e Y < M
    	j SO

NE:	addi $2, $0, 11
	addi $4, $0, 'N'
	syscall
	
	addi $2, $0, 11
	addi $4, $0, 'E'
	syscall
	j for_end

NO:	addi $2, $0, 11
	addi $4, $0, 'N'
	syscall
	
	addi $2, $0, 11
	addi $4, $0, 'O'
	syscall
	j for_end

SO:	addi $2, $0, 11
	addi $4, $0, 'S'
	syscall
	
	addi $2, $0, 11
	addi $4, $0, 'O'
	syscall
	j for_end
	
SE:	addi $2, $0, 11
	addi $4, $0, 'S'
	syscall
	
	addi $2, $0, 11
	addi $4, $0, 'E'
	syscall
	j for_end
	
DV:	addi $2, $0, 11
	addi $4, $0, 'D'
	syscall
	
	addi $2, $0, 11
	addi $4, $0, 'V'
	syscall
	j for_end
	
for_end:
	addi $2, $0, 11
	addi $4, $0, '\n'	# cout >> "\n"
	syscall
	addi $11, $11, 1	# i++
	j for
	
end:	addi $2, $0, 10
	syscall