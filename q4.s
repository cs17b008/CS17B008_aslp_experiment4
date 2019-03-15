.data
   m: .word 2
   q: .word 4
   a: .word 0 
   r: .word 0
.text

main:
  	lw $t0,m
	lw $t1,q
	lw $s7,a
	lw $s8,r
	addi $s6,$s6,0
	addi $s0,$s0,0
	addi $s1,$s1,1
	addi $t3,$t3,0
loop:
	slti $t2,$t3,32
	beq $t2,$0,Exit1
	and $s2,$t1,$s1
	srl $t1,$t1,1
	beq $s2,$s1,loop1
	beq $s2,$s0,loop2
	


loop1:
	add $s7,$t0,$s7
	and $s4,$s7,$s1
	sllv $s4,$s4,$s6
	add $s6,$s6,$s1
	add $s8,$s8,$s4
	srl $s7,$s7,1
	add $t3,$t3,$s1
	j loop

loop2:
	and $s5,$s7,$s1
	sllv $s5,$s5,$s6
	add $s6,$s6,$s1
	add $s8,$s8,$s5
	srl $s7,$s7,1
	add $t3,$t3,$s1
	j loop

Exit1:
	sw $s8,r
	sw $s7,a
 	jr $ra
