.data

.text

main: 
    li $a0, 1
    li $a1, 2
    li $a2, 3
    li $a3, 4
    jal folha

    move $a0, $v0
    li $v0, 1
    syscall

    li $v0, 10
    move $a0, $v0
    syscall

folha:
    addi $sp, $sp, -12
    sw $s0, 12($sp)
    sw $s1, 8($sp)
    sw $ra, 4($sp)
    
    add $s0, $a0, $a1
    add $s1, $a2, $a3
    sub $v0, $s0, $s1

    lw $s0, 12($sp)
    lw $s1, 8($sp)
    lw $ra, 4($sp)
    addi $sp, $sp, 12

    jr $ra

