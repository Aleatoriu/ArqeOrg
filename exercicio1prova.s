.data

.text

main:

li $v0, 5
syscall
move $t0, $v0

li $v0, 5
syscall
move $t1, $v0

beq $t0,$t1, sair


slt $t3, $t0, $t1
beq $t3, $zero, else


li $v0,1
add $a0, $zero, $t1
syscall

li $v0, 10
syscall


else:

li $v0,1
add $a0, $zero, $t0
syscall

li $v0, 10
syscall

sair:

li $t3, 0

li $v0,1
add $a0, $zero, $t3
syscall


li $v0, 10
syscall

