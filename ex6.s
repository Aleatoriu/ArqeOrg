.data

.text

	main:
		li $v0,5
		syscall
		move $t0,$v0
		li $v0, 5
		syscall
		move $t1,$v0
		
		li $t0,0
		sw $t0, 40($sp)
		sw $t1, 160($sp)
		
		lw $t2, 40($sp)
		lw $t3, 160($sp)
		
		add $t4,$t2,$t3
		
		sw $t4, 396($sp)
		lw $a0, 396($sp)
		
		li $v0, 1
		move $a0,$t4
		syscall 	#imprimir
		
		li $v0,10
		syscall 	#sair
