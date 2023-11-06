.data
	puzzle: .space 64

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
	getInt($s0)  #x
	getInt($s1)  #y
	la $t0 puzzle
	
	li $t1 0
	for_begin1:
	beq $t1 $s0 for_end1
		li $t2 0
		for_begin2:
		beq $t2 $s1 for_end2
			getInt($t3)
			sw $t3 0($t0)
			addi $t0 $t0 4
		addi $t2 $t2 1
		j for_begin2
		for_end2:
	addi $t1 $t1 1
	j for_begin1
	for_end1:
	
	getInt($s2)  
	sub $s2 $s2 1  #sx
	getInt($s3)  
	sub $s3 $s3 1  #sy
	getInt($s4)  
	sub $s4 $s4 1  #dx
	getInt($s5)  
	sub $s5 $s5 1  #dy
	
	move $a0 $s2
	move $a1 $s3
	jal dfs
	
	printInt($s6)
	
	li $v0 10
	syscall
	
dfs:
	push($ra)
  	push($t0)
  	push($t1)
  	push($t2)
  	push($a0)
  	push($a1)
  	
  	addi $t0 $0 -1
  	beq $t0 $a0 dfs_end
  	beq $s0 $a0 dfs_end
  	beq $t0 $a1 dfs_end
  	beq $s1 $a1 dfs_end
  	
  	mult $s1 $a0
  	mflo $t0
  	sll $t0 $t0 2
  	sll $t1 $a1 2
  	add $t0 $t0 $t1  #*t0=a[a0][a1]
  	lw $t1 0($t0)
  	bne $t1 $0 dfs_end  #a[a0][a1]==1?
  	
  	bne $a0 $s4 if_end1
  		bne $a1 $s5 if_end2
  			addi $s6 $s6 1
  			j dfs_end
  		if_end2:
  	if_end1:
  	
  	li $t1 1
  	sw $t1 0($t0)  #a[a0][a1]=1
  	addi $a0 $a0 -1
  	jal dfs
  	addi $a0 $a0 2
  	jal dfs
  	addi $a0 $a0 -1
  	addi $a1 $a1 -1
  	jal dfs
  	addi $a1 $a1 2
  	jal dfs
  	
  	sw $0 0($t0)  #a[a0][a1]=0
  	
  	dfs_end:
  	pop($a1)
  	pop($a0)
  	pop($t2)
  	pop($t1)
  	pop($t0)
  	pop($ra)
  	jr $ra














