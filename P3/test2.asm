.text
	ori $0 $1 5
	ori $1 $0 655
	ori $2 $0 65535
	ori $3 $2 1
	ori $4 $0 4
	sw $1 0($4)
	sw $2 -4($4)
	sw $3 12($4)
	lw $0 0($4)
	lw $5 0($4)
	lw $6 -4($4)
	lw $7 12($4)
	add $8 $2 $3
	add $9 $4 $3
	sub $10 $2 $1
	sub $11 $1 $2
	branch:
	ori $12 $0 1
	ori $13 $0 5
	add $14 $14 $12
	beq $14 $13 branch
	beq $14 $13 branch1
	add $14 $14 $13
	branch1:
	branch2:
	beq $0 $0 branch2
