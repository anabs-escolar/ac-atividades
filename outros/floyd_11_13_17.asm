.text
main:
    # Ler número de linhas
    addi $2, $0, 5
    syscall
    add $8, $0, $2       # n linhas

    addi $9, $0, 1       # i = 1
    addi $11, $0, 1      # num = 1

for_i:
    slt $15, $8, $9      # n < i
    bne $15, $0, fim     # if i > n, end

    addi $10, $0, 0      # count = 0

while:
    slt $15, $9, $10     	# if i < count
    bne $15, $0, end_for_i  	# if count >= i, next loop

    # num % 11 == 0 
    addi $14, $0, 11
    div $11, $14
    mfhi $12
    beq $12, $0, print   # se resto == 0, é múltiplo

    # num % 13 == 0 
    addi $14, $0, 13
    div $11, $14
    mfhi $12
    beq $12, $0, print

    # num % 17 == 0 
    addi $14, $0, 17
    div $11, $14
    mfhi $12
    beq $12, $0, print

    addi $11, $11, 1
    j while

print:
    addi $2, $0, 1
    add $4, $0, $11	# cout >> num
    syscall

    addi $2, $0, 11
    addi $4, $0, ' '
    syscall

    addi $10, $10, 1	# count++
    addi $11, $11, 1	# num++
    j while

end_for_i:
    addi $2, $0, 11
    addi $4, $0, '\n'
    syscall

    addi $9, $9, 1    	# i++
    j for_i

fim:
    addi $2, $0, 10
    syscall
