.data
  G: .space 256
  book: .space 32
  ans: .space 4

.macro end
  li $v0 10
  syscall
.end_macro

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

.macro getIndex(%ans, %i, %j)
  sll %ans %i 3
  add %ans %ans %j
  sll %ans %ans 2
.end_macro

.text
  getInt($s0) #n
  getInt($s1) #m
  
  li $t0 0
  for_begin1: #for(int i=0;i<m;i++)
  beq $t0 $s1 for_end1
    
    getInt($t1)
    getInt($t2)
    addi $t1 $t1 -1
    addi $t2 $t2 -1
    li $t4 1
    getIndex($t3,$t1,$t2)
    la $t5 G
    add $t3 $t3 $t5
    sw $t4 0($t3)
    li $t4 1
    getIndex($t3,$t2,$t1)
    la $t5 G
    add $t3 $t3 $t5
    sw $t4 0($t3)
    
    addi $t0 $t0 1
    j for_begin1
  for_end1:
  
  move $a0 $0
  jal dfs
  
  la $t1 ans
  lw $t0 0($t1)
  printInt($t0)
  
  end
  
dfs:
  push($ra)
  push($t0)
  push($t1)
  push($t2)
  push($t3)
  push($t4)
  push($t5)
  push($t6)
  push($t7)
  
  move $t0 $a0    #t0:x
  
  la $t1 book
  sll $t2 $t0 2
  add $t1 $t1 $t2 #t1:book[x]
  li $t4 1        #book[x]=1
  sw $t4 0($t1)
  li $t2 1        #t2:flag=1
  la $t3 book     #t3:book[0]
  
  li $t4 0
  for_begin2:     #判断是否经过了所有的点
    beq $t4 $s0 for_end2 #for(int i=0;i<n;i++)
    sll $t5 $t4 2
    add $t5 $t5 $t3
    lw $t6 0($t5)
    and $t2 $t2 $t6      #flag &= book[i]
    addi $t4 $t4 1
    j for_begin2
  for_end2: 
  
  getIndex($t4,$t0,$0)#判断是否形成回路
  la $t5 G
  add $t5 $t5 $t4
  lw $t4 0($t5)
  and $t2 $t2 $t4  #flag && G[x][0]
  beq $t2 $0 if_end1
    la $t4 ans     #ans=1
    li $t5 1
    sw $t5 0($t4)
    j dfs_end
  if_end1:
  
  li $t4 0
  for_begin3:
    beq $t4 $s0 for_end3
    sll $t5 $t4 2
    add $t5 $t5 $t3  #t5==book[i]
    lw $t6 0($t5)
    xori $t5 $t6 1   #!book[i]
    getIndex($t6,$t0,$t4)
    la $t7 G
    add $t6 $t6 $t7
    lw $t7 0($t6)
    and $t5 $t5 $t7  #!book[i]&&G[x][i]
    beq $t5 $0 if_end2
      move $a0 $t4
      jal dfs
    if_end2:
    addi $t4 $t4 1
    j for_begin3
  for_end3:
  
  li $t4 0         #book[x]=0
  sw $t4 0($t1)
  dfs_end:
  pop($t7)
  pop($t6)
  pop($t5)
  pop($t4)
  pop($t3)
  pop($t2)
  pop($t1)
  pop($t0)
  pop($ra)
  jr $ra

