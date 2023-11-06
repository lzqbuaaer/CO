.data
	str: .space 100

.macro getInt(%des)
  	li $v0 5
  	syscall
  	move %des $v0
.end_macro

.macro getChar(%des)
  	li $v0 12
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
	getInt($s0)  #s0==n
	srl $s1 $s0 1 #s1==n/2
	la $t1 str  #*t1==str
	
	li $t0 0
	for_begin1:  #for(int t0=0;t0<s1;t0++)
	beq $t0 $s1 for_end1
		getChar($t2)
		sw $t2 0($t1)
		addi $t1 $t1 4
	addi $t0 $t0 1
	j for_begin1
	for_end1:
	
	andi $s2 $s0 1  #s2 judge odd
	beq $s2 $0 if_end1
		getChar($t0)
	if_end1:
	
	li $s3 1  #ans
	li $t0 0
	for_begin2:  #for(int t0=0;t0<s1;t0++)
	beq $t0 $s1 for_end2
		addi $t1 $t1 -4
		lw $t2 0($t1)
		getChar($t3)
		beq $t2 $t3 if_end2
			li $s3 0
		if_end2:
	addi $t0 $t0 1
	j for_begin2
	for_end2:
	
	printInt($s3)
	
	li $v0 10
	syscall












