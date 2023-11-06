.data 
	matrix1: .space 576
	matrix2: .space 576
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

.macro printSpace
  	la $a0 space
  	li $v0 4
  	syscall
.end_macro

.macro printEnter
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
	getInt($s0)  #m1
	getInt($s1)  #n1
	getInt($s2)  #m2
	getInt($s3)  #n2
	
	la $t3 matrix1  #input matrix1
	li $t0 0
	for_begin1:
	beq $t0 $s0 for_end1
		li $t1 0
		for_begin2:
		beq $t1 $s1 for_end2
			getInt($t2)
			sw $t2 0($t3)
			addi $t3 $t3 4
		addi $t1 $t1 1
		j for_begin2
		for_end2:
	addi $t0 $t0 1
	j for_begin1
	for_end1:
	
	la $t3 matrix2  #input matrix2
	li $t0 0
	for_begin3:
	beq $t0 $s2 for_end3
		li $t1 0
		for_begin4:
		beq $t1 $s3 for_end4
			getInt($t2)
			sw $t2 0($t3)
			addi $t3 $t3 4
		addi $t1 $t1 1
		j for_begin4
		for_end4:
	addi $t0 $t0 1
	j for_begin3
	for_end3:
	
	sub $s4 $s0 $s2  #s4=m1-m2+1
	addi $s4 $s4 1
	sub $s5 $s1 $s3  #s5
	addi $s5 $s5 1
	

	li $t0 0   #count
	for_begin5:
	beq $t0 $s4 for_end5
		li $t1 0
		for_begin6:
		beq $t1 $s5 for_end6
			move $a0 $t0
			move $a1 $t1
			jal multiply
		addi $t1 $t1 1
		j for_begin6
		for_end6:
		printEnter
	addi $t0 $t0 1
	j for_begin5
	for_end5:
	
	li $v0 10
	syscall

multiply:
	push($ra)
  	push($t0)
  	push($t1)
  	push($t2)
  	push($t3)
  	push($t4)
  	push($t5)
  	
	li $t0 0  #t0=ans
	
	li $t1 0
	for_begin7:
	beq $t1 $s2 for_end7
		li $t2 0
		for_begin8:
		beq $t2 $s3 for_end8
			add $t3 $t1 $a0
			add $t4 $t2 $a1
			mult $t3 $s1
			mflo $t3
			add $t3 $t3 $t4
			sll $t3 $t3 2  
			la $t4 matrix1 
			add $t3 $t3 $t4  #address1
			la $t4 matrix2
			mult $t1 $s3
			mflo $t5
			add $t5 $t5 $t2
			sll $t5 $t5 2
			add $t4 $t4 $t5  #address2
			lw $t5 0($t3)
			lw $t3 0($t4)
			mult $t3 $t5
			mflo $t3
			add $t0 $t0 $t3
		addi $t2 $t2 1
		j for_begin8
		for_end8:
	addi $t1 $t1 1
	j for_begin7
	for_end7: 
	
	printInt($t0)
	printSpace
  	
  	pop($t5)
  	pop($t4)
  	pop($t3)
  	pop($t2)
  	pop($t1)
  	pop($t0)
  	pop($ra)
  	jr $ra











