.data
	floor: .space 5000

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

.macro push(%src)
  	sw %src 0($sp)
  	addi $sp $sp -4
.end_macro

.macro pop(%des)
  	addi $sp $sp 4
  	lw %des 0($sp)
.end_macro

.text
	getInt($s0)  #n
	addi $s0 $s0 1
	
	li $t0 1
	la $s1 floor
	sw $t0 0($s1)  #f[0]=1;
	addi $s1 $s1 4  #high
	for_begin1:
	beq $t0 $s0 for_end1
		move $a0 $t0
		jal multiply
	addi $t0 $t0 1
	j for_begin1
	for_end1:
	
	for_begin2:  #print
	beq $s1 $0 for_end2
		addi $s1 $s1 -4
		lw $t0 0($s1)
		printInt($t0)
	j for_begin2
	for_end2:
	
	li $v0 10
	syscall

multiply:
	push($ra)
  	push($t0)
  	push($t1)
  	push($t2)
  	push($t3)
  	push($t4)
  	
  	move $t0 $a0
  	li $t1 0  #low bit
  	la $t2 floor
  	
  	for_begin3:
  	beq $t2 $s1 for_end3
  		lw $t3 0($t2)  
  		mult $t3 $t0
  		mflo $t3
  		add $t3 $t3 $t1
  		
  		li $t4 10
  		div $t3 $t4
  		mfhi $t3
  		mflo $t1
  		
  		sw $t3 0($t2)
  	addi $t2 $t2 4
  	j for_begin3
  	for_end3:
  	
  	#highest bit
  	for_begin4:
  	beq $t1 $0 for_end4
  		li $t4 10
  		div $t1 $t4
  		mfhi $t2
  		mflo $t1
  		
  		sw $t2 0($s1)
  		addi $s1 $s1 4
  	j for_begin4
  	for_end4:
  	pop($t4)
  	pop($t3)
  	pop($t2)
  	pop($t1)
  	pop($t0)
  	pop($ra)
  	jr $ra








