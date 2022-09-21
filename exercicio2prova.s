.text


main:

li $v0, 5
syscall
move $t0, $v0

li $v0, 5
syscall
move $t1, $v0



if:
	slt $t3, $zero, $t0
	bne $t3,$zero, else
	
	
	
	sll $t4, $t1, 10
	li $s0, 1
	li $v0,1
	add $a0, $zero, $s0
	syscall
	
	
else:
	li, $v0, 10
	syscall
	
	
