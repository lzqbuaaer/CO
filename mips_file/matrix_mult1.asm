.data
	matrix1: .space 256
	matrix2: .space 256
	space: .asciiz " "
	enter: .asciiz "\n"
	
.macro getInt(%des)
  	li $v0 5
  	syscall
  	move %des $v0
.end_macro

.macro printInt(%src)
  	move $a0 %src
  	li $v0 1
  	syscall
.end_macro

.macro printSpace()
  	la $a0 space
  	li $v0 4
  	syscall
.end_macro

.macro printEnter()
  	la $a0 enter
  	li $v0 4
  	syscall
.end_macro

.macro push(%src)
  	sw %src 0($sp)
  	addi $sp $sp -4
.end_macro

.macro pop(%des)
  	addi $sp $sp 4
  	lw %des 0($sp)
.end_macro

.text
	getInt($s0)  #s0==n
	
	la $s1 matrix1  #*s1==matrix1  input matrix1
	la $t3 matrix1  #address
	li $t0 0
	for_begin1:  #for(int t0=0;t0!=s0;t0++)
	beq $t0 $s0 for_end1
		li $t1 0
		for_begin2:
		beq $t1 $s0 for_end2
			getInt($t2)  #number to be saved
			sw $t2 0($t3)
			addi $t3 $t3 4
		addi $t1 $t1 1
		j for_begin2
		for_end2:
	addi $t0 $t0 1
	j for_begin1
	for_end1:
	
	la $s2 matrix2  #*s2==matrix2   input matrix2
	la $t3 matrix2  #address
	li $t0 0
	for_begin3:  #for(int t0=0;t0!=s0;t0++)
	beq $t0 $s0 for_end3
		li $t1 0
		for_begin4:
		beq $t1 $s0 for_end4
			getInt($t2)  #number to be saved
			sw $t2 0($t3)
			addi $t3 $t3 4
		addi $t1 $t1 1
		j for_begin4
		for_end4:
	addi $t0 $t0 1
	j for_begin3
	for_end3:
	
	li $t0 0
	for_begin6:  #for(int t0=0;t0!=s0;t0++)
	beq $t0 $s0 for_end6
		li $t1 0
		for_begin7:
		beq $t1 $s0 for_end7
			move $a0 $t0
			move $a1 $t1
			jal multiply
		addi $t1 $t1 1
		j for_begin7
		for_end7:
		printEnter()
	addi $t0 $t0 1
	j for_begin6
	for_end6:
	
	li $v0 10
  	syscall
	
	
multiply:  #(a0,a1)
	push($ra)
  	push($t0)
  	push($t1)
  	push($t2)
  	push($t3)
  	push($t4)
  	push($t5)
  	
  	li $t1 0  #ans
  	mult $a0 $s0
  	mflo $t3
  	sll $t3 $t3 2
  	add $t2 $s1 $t3  #pointer1
  	li $t3 0
  	sll $t4 $a1 2
  	add $t3 $s2 $t4  #pointer2
  	
  	li $t0 0
	for_begin5:  #for(int t0=0;t0!=s0;t0++)
	beq $t0 $s0 for_end5
		lw $t4 0($t2)
		lw $t5 0($t3)
		mult $t4 $t5
		mflo $t4
		add $t1 $t1 $t4
		addi $t2 $t2 4  #t2++
		move $t4 $s0
		sll $t4 $t4 2  #t4==4n
		add $t3 $t3 $t4  #t3++
	addi $t0 $t0 1
	j for_begin5
	for_end5:
	printInt($t1)
	printSpace()
  	
	pop($t5)
  	pop($t4)
  	pop($t3)
  	pop($t2)
  	pop($t1)
  	pop($t0)
  	pop($ra)
  	jr $ra










