jal jump1
ori $5 $ra 0
jump1:
ori $2 $ra 0
ori $3 $ra 0
ori $4 $ra 0
ori $6 $0 0x3020
jal jump2
nop
jump2:
beq $6 $ra jump3
ori $7 $0 1
ori $8 $0 1
jump3:
ori $9 $0 1

ori $1 $0 4
ori $2 $0 20
ori $3 $0 12
sw $2 0($1)
sw $2 0($2)
sw $6 0($0)
jal jump4
lw $10 0($0)
jump4:
lw $11 0($1)
lw $12 0($2)

add $3 $3 $1
lw $13 4($3)
lw $14 4($3)
lw $15 4($3)

ori $3 $0 0
lw $13 4($3)
lw $14 4($3)
lw $15 4($3)

ori $ra, $0, 0xffff
jal label
add $s1, $ra, $0
label:



jal jump5
nop
jump5:
jr $ra







