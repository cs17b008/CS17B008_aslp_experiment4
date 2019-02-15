      .data
 v1:  .word 12
 v2:  .word 0
 v4:  .word 1
       .text
 main:
lw $t0,v1
srl $t0,$t0,31
sw $t0,v2
j $ra
