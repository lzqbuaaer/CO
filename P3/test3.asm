jal branch1
ori $1 $0 5
beq $1 $1 branch2
branch1:
ori $1 $0 3
jr $ra
branch3:
ori $1 $0 7
jr $ra
branch2:
jal branch3