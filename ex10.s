.text


main:

li $t0, 2
li $t1, 10

addi $t3, $t3, 0

if:
	slt $t0, $t1, $zero
	bne $s0,$zero, else
	sgt $t1, $t2, else
	li $t3, 1
else:
	li $v0, 1
	move $a, $t2
	syscall
	
	 

