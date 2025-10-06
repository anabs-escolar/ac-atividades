.text
main:  addi $2, $0, 5	# input int
       syscall
       add $8, $0, $2
       
       addi $9, $0, 8 
       div $8, $9	# int/8
       
       mflo $10		# 0 ou 1
       
       add $11, $8, $10	# 0 ou 1 + int
       
       andi $12, $11, 1	# verifica o ultimo bit
       
       addi $4, $12, 30 # soma 30
       addi $2, $0, 1
       syscall
       
       addi $2, $0, 10 # encerra o programa
       syscall