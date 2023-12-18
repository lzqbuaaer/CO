.ktext 0x4180
mfc0 $k0, $14
addi $k0, $k0, 4
mtc0 $k0, $14
lui $k0, 12
lui $k1, 2131
div $k1, $k0
eret
mflo $k0
lui $20, 0x7654
lui $21, 0x8654
lui $22, 0x9654

.text
ori $5,$0 0x0000ff11
mtc0  $5, $12
lui $2, 0x7fff
ori $2 $2 0xffff
addi $3,$0 0x5ff
add $2, $3, $2
lui $16, 0xabcd
lui $17, 0x1234