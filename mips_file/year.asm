.text
  li $v0, 5
  syscall
  la $s0, 0($v0)
  
  la $t0, 4
  div $s0, $t0
  mfhi $s1
  la $t0, 100
  div $s0, $t0
  mfhi $s2
  la $t0, 400
  div $s0, $t0
  mfhi $s3
  
  beq $s1, $zero, if_1_else  #能不能被4整除
    la $a0, 0
    j if_1_end
  if_1_else:
    beq $s2, $zero, if_2_else  #能不能被100整除
      la $a0, 1
      j if_1_end
    if_2_else:
      beq $s3, $zero, if_3_else  #能不能被400整除
        la $a0, 0
        j if_1_end
      if_3_else:
        la $a0, 1
        j if_1_end
  if_1_end:
    li $v0, 1
    syscall
    li $v0, 10
    syscall