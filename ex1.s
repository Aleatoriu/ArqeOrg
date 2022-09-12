.data


.text

main:
	addi $t0,$zero,15
	addi $t1,$zero,30
	add $t3,$t0,$t1
	
	#sistema para imprimir o resultado
	li $v0,1
	add $a0, $zero, $t2
	syscall
	
	#chamada de sisema para sair
	li $v0,10
	syscall
