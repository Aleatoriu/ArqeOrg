.data

.text

	main:
		li $v0,5
		syscall
		move $t0,$v0
		li $v0, 5
		syscall
		move $t1,$v0
		
		sub $t3, $t0, $t1   #operações
		
		li $v0, 1
		move $a0,$t3
		syscall 	#imprimir
		
		li $v0,10
		syscall 	#sair
