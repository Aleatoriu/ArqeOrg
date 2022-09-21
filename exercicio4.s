.data
 
	save: .word 10, 20 ,30, 40, 50, 60 
	save2: .word 0, 10 ,-15, 16, 20, 30 

.text


main:
	la $s5, save
	la $s6, save
	
	lw $t1, 0($s5) 
	lw $t2, 0($s6)
	
	add $t3, $t1,$t2
	li $v0,1
	add $a0, $zero, $t3
	syscall
	
	lw $t1, 4($s5) 
	lw $t2, 4($s6)
	
	add $t3, $t1,$t2
	li $v0,1
	add $a0, $zero, $t3
	syscall	
	
	lw $t1, 8($s5) 
	lw $t2, 8($s6)
	
	add $t3, $t1,$t2
	li $v0,1
	add $a0, $zero, $t3
	syscall
	
	lw $t1, 12($s5) 
	lw $t2, 12($s6)
	
	add $t3, $t1,$t2
	li $v0,1
	add $a0, $zero, $t3
	syscall

	lw $t1, 16($s5) 
	lw $t2, 16($s6)
	
	add $t3, $t1,$t2
	li $v0,1
	add $a0, $zero, $t3
	syscall
	
	lw $t1, 20($s5) 
	lw $t2, 20($s6)
	
	add $t3, $t1,$t2
	li $v0,1
	add $a0, $zero, $t3
	syscall
	
	lw $t1, 24($s5) 
	lw $t2, 24($s6)
	
	add $t3, $t1,$t2
	li $v0,1
	add $a0, $zero, $t3
	syscall
	
	li $v0,10
	syscall
	
	

 
