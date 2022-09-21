.data

.text

main:
	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 5
	syscall
	move $t1, $v0         ##leitura
	
if:                           ##comparaçao dos sinais
	slt $s0, $zero, $t0
	slt $s1, $zero, $t1
	beq $s1, $s0, positivo

positivo:

	while:			##soma
	add $t3, $t0, $t0
	beq $t1, $zero, sair
	
	addi $t1, $t1, -1
	
	j while 
	


sair:				##saida
	li $v0,1
	add $a0, $zero, $t3
	syscall
	li $v0, 10
	syscall
	
