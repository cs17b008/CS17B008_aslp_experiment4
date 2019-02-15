     .data
v1:  .word 12 
v2:  .word 2
v3:  .word 0
v4:  .word 0
v5:  .word 0  #count 0
v6:  .word 0  #count 1
     .text 
     
main:
 lw $t0,v1
 #addi $t0,$0,12
 lw $t1,v2
 #addi $t1,$0,2
 addi $t6,$0,1
 addi $s3,$0,32
 lw $s0,v3
 #addi $s0,$0,0
 lw $s1,v4
 #addi $s1,$0,0
 lw $s2,v5
 lw $s3,v6
 
 
 loop:
 slt $t3,$t2,$s3
 bne $t3,$t6,Exit
 div $t0,$t1
 mfhi $t4
 mflo $t0
 addi $t2,$t2,1
 beq $t4,$0,loop1
 beq $t4,$t6,loop2
 j loop
 
 loop1:
 bne $s1,$0,loop3
 addi $s0,$s0,1
 j loop
      
 loop2:
 bne $s0,$0,loop4
 addi $s1,$s1,1
 j loop
 
 loop3:
 sw $s1,0
 addi $s2,$s2,1
 j loop1
 
 loop4:
 sw $s0,0
 addi $s3,$s3,1
 j loop2
 
 
Exit:
sw $s2,v5
sw $s3,v6
j $ra
