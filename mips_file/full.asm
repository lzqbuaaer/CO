.data
	symbol: .space 32
	array: .space 32
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
	getInt($s0)  #main
	li $a0 0
	jal fullArray
	li $v0 10
	syscall
	
fullArray:
	push($ra)
  	push($t0)
  	push($t1)
  	push($t2)
  	push($t3)
  	push($t4)
  	push($t5)
  	
  	move $t0 $a0
  	bne $t0 $s0 if_end1  #if(t0==s0)
  		li $t1 0
  		for_begin1:  #for(int t1=0;t1!=s0;t1++)
  		beq $t1 $s0 for_end1
  			la $t2 array
  			sll $t3 $t1 2
  			add $t2 $t2 $t3  #*t2==array[t1]
  			lw $t3 0($t2)
  			printInt($t3)
  			printSpace
  		addi $t1 $t1 1
  		j for_begin1
  		for_end1:
  		printEnter
  		j fun_end
  	if_end1:
  	
  	li $t1 0
  	for_begin2:  #for(int t1=0;t1!=s0;t1++)
  	beq $t1 $s0 for_end2
  		la $t3 symbol
  		sll $t2 $t1 2
  		add $t3 $t3 $t2
  		lw $t2 0($t3)  #t2=symbol[t1]
  		bne $t2 $0 if_end2
  			move $t2 $t3  #*t2=symbol[t1]
  			la $t3 array
  			sll $t4 $t0 2
  			add $t3 $t3 $t4  #*t3=array[t0]
  			addi $t4 $t1 1  #t4=t1+1
  			sw $t4 0($t3)  #array[t0]=t1+1
  			
  			li $t4 1
  			sw $t4 0($t2) #symbol[t1]=1
  			
  			addi $a0 $t0 1
  			jal fullArray
  			
  			sw $0 0($t2)  #symbol[t1]=0
  		if_end2:
  	addi $t1 $t1 1
  	j for_begin2
  	for_end2:
  	
  	fun_end:
  	pop($t5)
  	pop($t4)
  	pop($t3)
  	pop($t2)
  	pop($t1)
  	pop($t0)
  	pop($ra)
  	jr $ra















