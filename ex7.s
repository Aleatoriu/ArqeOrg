.data
 
	save: .word 1, 1 ,1, 1, 10 

.text
	##la $s6, save 
main:

	li $s3, 0 
	li $s5, 1 
	la $s6, save

while:
	add $t0, $s6, $s3
	lw $t1,0($t0)
	bne $t1, $s5, exit
	addi $s3, $s3, 4
	j exit 
	
exit:
	
	li $v0, 1
	move $a0,$s3
	syscall 
	
	li $v0,10
	syscall 






		
	
