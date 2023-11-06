.data
  matrix: .space 1000
  order: .space 1000
  str_space: .asciiz " "
  str_enter: .asciiz "\n"
 
.text
  li $v0 5
  syscall
  move $s0 $v0 #行数m
  li $v0 5
  syscall
  move $s1 $v0 #列数n
  la $s2 matrix
  la $s3 order
  
  move $t0 $s0 #for(int i=0;i<m;i++)
  li $t1 0
  for_begin1:
    slt $t2 $t1 $t0
    beq $t2 $0 for_end1
    
    move $t3 $s1 #for(int j=0;j<n;j++)
    li $t4 0
    for_begin2:
      slt $t5 $t4 $t3
      beq $t5 $0 for_end2
      
      li $v0 5
      syscall
      beq $v0 $0 if_end #记录不是0的元素
        sw $v0 0($s2) #存入内存
        mult $t1 $s1
        mflo $t6
        add $t6 $t6 $t4
        sw $t6 0($s3)
        addi $s2 $s2 4 #移动pointer
        addi $s3 $s3 4  
      if_end:
      
      addi $t4 $t4 1
      j for_begin2
    for_end2:
    
    addi $t1 $t1 1
    j for_begin1
  for_end1:
  
  addi $s2 $s2 -4
  addi $s3 $s3 -4
  for_begin3:
    bltz $s2 for_end3
    
    lw $t2 0($s3)
    div $t2 $s1
    mfhi $t0
    mflo $t1
    addi $t0 $t0 1
    addi $t1 $t1 1
    
    move $a0 $t1
    li $v0 1
    syscall
    
    la $a0 str_space
    li $v0 4
    syscall
    
    move $a0 $t0
    li $v0 1
    syscall
    
    la $a0 str_space
    li $v0 4
    syscall
    
    lw $a0 0($s2)
    li $v0 1
    syscall
    
    la $a0 str_enter
    li $v0 4
    syscall
    
    addi $s2 $s2 -4
    addi $s3 $s3 -4
    j for_begin3
  for_end3:
  
  li $v0 10
  syscall
  