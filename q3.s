.data
   	a1:   .space 12
   	a2:   .space 12
.text
main:
   	addi $t0,$0,1
	addi $t1,$0,2
	addi $t2,$0,3
    	addi $s0,$0,0
	sw $t0,a1($s0)
	addi $s0,$s0,4
	sw $t1,a1($s0)
	addi $s0,$s0,4
	sw $t2,a1($s0)
	
	addi $t0,$0,5
	addi $t1,$0,6
	addi $t2,$0,7
    	addi $s0,$0,0
	sw $t0,a2($s0)
	addi $s0,$s0,4
	sw $t1,a2($s0)
	addi $s0,$s0,4
	sw $t2,a2($s0)

        
    	addi $s0,$0,0
	lw $t3,a1($s0)
	addi $s0,$s0,4
	lw $t4,a1($s0)
	addi $s0,$s0,4
	lw $t5,a1($s0)

	addi $s0,$0,0
	lw $t6,a2($s0)
	addi $s0,$s0,4
	lw $t7,a2($s0)
	addi $s0,$s0,4
	lw $t8,a2($s0)

	addi $s0,$0,0
	sw $t6,a1($s0)
	addi $s0,$s0,4
	sw $t7,a1($s0)
	addi $s0,$s0,4
	sw $t8,a1($s0)

	addi $s0,$0,0
	sw $t3,a2($s0)
	addi $s0,$s0,4
	sw $t4,a2($s0)
	addi $s0,$s0,4
	sw $t5,a2($s0)


	addi $s0,$0,0
	lw $s1,a1($s0)
	addi $s0,$s0,4
	lw $s2,a1($s0)
	addi $s0,$s0,4
	lw $s3,a1($s0)
	

        addi $s0,$0,0
	lw $s4,a2($s0)
	addi $s0,$s0,4
	lw $s5,a2($s0)
	addi $s0,$s0,4
	lw $s6,a2($s0)
	
	jr $ra
