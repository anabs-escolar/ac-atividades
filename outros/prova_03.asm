.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# int n
	
	addi $14, $0, 10
	slt $15, $14, $8	# if (10<n) break 
	bne $15, $0, error
	
	addi $14, $0, 1		
	slt $15, $8, $14	# if (n<1) break 
	bne $15, $0, error
	
	addi $12, $0, 0		# int num
	addi $9, $0, 1  	# int i


for_i:	slt $15, $8, $9		# i < n
	bne $15, $0, end
	
	addi $13, $0, 0		# int k = 0
	addi $10, $0, 1		# int j = 1
	
for_k:	sub $14, $8, $9		# n-i
	slt $15, $14, $13	# if (n-i < k)
	bne $15, $0, for_j	# if 1 break, 0 continue
		
	addi $2, $0, 11
	addi $4, $0, ' '
	syscall
	
	addi $13, $13, 1	# k++
	j for_k
	
for_j:	
	slt $15, $9, $10	# j < i
	bne $15, $0, end_for_i
	
	addi $2, $0, 1
	add $4, $0, $12
	syscall
	
	addi $10, $10, 1	# j++
	j for_j
	
end_for_i:
	addi $12, $12, 1	# num++
	addi $9, $9, 1		# i++
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	j for_i

error:
	addi $2, $0, 11
	addi $4, $0, 'N'
	syscall

end: 	addi $2, $0, 10
	syscall
