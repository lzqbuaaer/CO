add $8, $31, $8
beq $10, $9, label0
lw $8, 8368($10)
label1:
beq $10, $8, label2
nop
label3:
ori $9, $31, 0x5385
beq $9, $8, label4
nop
label5:
lui $8, 0x17a4
nop
add $8, $9, $9
jal jump0
lui $1, 0xffff
beq $31, $31, label6
ori $9, $31, 0xf843
label7:
beq $9, $8, label8
nop
label9:
jal jump1
lui $1, 0xffff
jal jump2
sw $31, 0($0)
add $31, $31, $31
add $8, $8, $10
beq $10, $31, label10
nop
label11:
sub $8, $9, $9
beq $10, $8, label12
lw $9, 9176($10)
label13:
jal jump3
lui $31, 0
lui $10, 0x6f82
add $31, $10, $10
lw $8, 5300($8)
nop
add $10, $10, $31
beq $31, $10, label14
nop
label15:
beq $8, $9, label16
nop
label17:
sub $10, $8, $31
lui $9, 0x1e40
sub $8, $31, $9
add $8, $8, $8
nop
beq $9, $8, label18
nop
label19:
add $31, $31, $8
add $8, $8, $9
nop
ori $10, $31, 0xde0a
jal jump4
lui $31, 0
add $31, $10, $8
beq $31, $9, label20
nop
label21:
beq $9, $8, label22
nop
label23:
jal jump5
sw $31, 0($0)
ori $10, $10, 0x7d32
sub $9, $8, $9
ori $31, $8, 0x51bd
nop
add $31, $4, $31
jal jump6
sw $31, 0($0)
nop
beq $6, $5, label24
ori $31, $6, 0x5da2
label25:
beq $5, $6, label26
nop
label27:
ori $31, $31, 0x4ed6
lw $31, 2844($5)
jal jump7
sw $31, 0($0)
jal jump8
lui $1, 0xffff
sub $6, $5, $4
lw $4, -1888($4)
add $5, $6, $31
add $4, $5, $4
jal jump9
lui $1, 0xffff
sub $5, $6, $5
jal jump10
lui $1, 0xffff
jal jump11
sw $31, 0($0)
beq $31, $5, label28
nop
label29:
ori $4, $31, 0xdefc
jal jump12
lui $31, 0
lui $4, 0xe54
sw $31, 8776($31)
sub $31, $6, $5
sw $31, -26991($31)
add $6, $31, $4
beq $4, $6, label30
nop
label31:
beq $6, $31, label32
nop
label33:
beq $31, $31, label34
lui $6, 0x2f66
label35:
beq $5, $5, label36
nop
label37:
jal jump13
sw $31, 0($0)
add $4, $31, $5
nop
lui $6, 0x334
nop
ori $6, $4, 0x6ce8
add $6, $31, $5
lui $4, 0xed3c
sub $4, $31, $4
beq $6, $4, label38
nop
label39:
add $4, $6, $31
beq $6, $5, label40
nop
label41:
ori $31, $4, 0x6cd
beq $31, $5, label42
nop
label43:
beq $6, $4, label44
nop
label45:
jal jump14
lui $1, 0xffff
add $8, $7, $31
sub $9, $7, $9
lui $31, 0xd600
ori $7, $8, 0x509d
beq $7, $7, label46
nop
label47:
lui $8, 0x88fd
nop
jal jump15
sw $31, 0($0)
jal jump16
sw $31, 0($0)
add $9, $8, $7
sub $8, $9, $8
sub $7, $8, $9
jal jump17
sw $31, 0($0)
sw $9, -10656($31)
jal jump18
sw $31, 0($0)
ori $31, $7, 0x8782
lui $31, 0xc0c2
lui $8, 0xadcb
sub $31, $8, $31
jal jump19
lui $1, 0xffff
beq $31, $8, label48
nop
label49:
beq $31, $8, label50
nop
label51:
lui $9, 0x7339
jal jump20
lui $31, 0
sub $31, $7, $9
lui $31, 0x88e
jal jump21
lui $31, 0
jal jump22
sw $31, 0($0)
beq $8, $31, label52
nop
label53:
sub $31, $31, $9
add $9, $8, $8
add $7, $7, $31
beq $8, $31, label54
nop
label55:
lui $9, 0x10c5
add $8, $9, $9
lui $8, 0x9a5
sub $8, $9, $7
jal jump23
lui $31, 0
jal jump24
sw $31, 0($0)
ori $7, $8, 0x16f4
jal jump25
lui $1, 0xffff
lui $7, 0x8ae5
nop
sw $20, 1960($19)
beq $31, $31, label56
nop
label57:
jal jump26
sw $31, 0($0)
ori $18, $20, 0xa042
jal jump27
lui $31, 0
jal jump28
lui $31, 0
lui $20, 0xe852
jal jump29
lui $1, 0xffff
ori $20, $18, 0x4c29
beq $31, $31, label58
sub $18, $31, $31
label59:
beq $19, $31, label60
nop
label61:
ori $19, $20, 0xfc94
beq $31, $31, label62
lui $20, 0x3108
label63:
nop
lui $18, 0x5c26
jal jump30
sw $31, 0($0)
ori $20, $18, 0x9371
add $18, $20, $20
nop
ori $31, $20, 0xd0fd
lui $31, 0x7c7a
beq $19, $31, label64
nop
label65:
lui $18, 0x2be1
add $18, $20, $31
sub $18, $31, $31
jal jump31
lui $1, 0xffff
add $20, $19, $31
nop
jal jump32
sw $31, 0($0)
sw $19, 160($18)
beq $31, $18, label66
nop
label67:
jal jump33
sw $31, 0($0)
nop
lui $19, 0x2da4
add $31, $20, $20
add $20, $18, $31
nop
jal jump34
lui $1, 0xffff
beq $18, $31, label68
nop
label69:
beq $31, $18, label70
nop
label71:
nop
jal jump35
lui $1, 0xffff
ori $19, $31, 0x5f96
ori $18, $19, 0xd650
ori $20, $19, 0x1ce9
beq $24, $23, label72
lui $31, 0x23df
label73:
lui $31, 0x9b8e
beq $23, $24, label74
sw $24, 1388($23)
label75:
beq $24, $31, label76
nop
label77:
lw $22, 7524($24)
nop
lw $23, 1240($22)
sub $23, $23, $22
lw $24, 10084($24)
beq $22, $23, label78
sub $24, $22, $23
label79:
add $23, $24, $22
lui $24, 0x2928
sub $24, $23, $23
ori $22, $22, 0xc364
jal jump36
sw $31, 0($0)
ori $23, $22, 0xc994
beq $22, $23, label80
nop
label81:
sub $31, $31, $22
jal jump37
lui $31, 0
jal jump38
lui $1, 0xffff
beq $24, $23, label82
nop
label83:
ori $23, $31, 0xd395
lw $24, -10472($31)
beq $31, $22, label84
nop
label85:
beq $24, $24, label86
lui $22, 0xf1a9
label87:
jal jump39
lui $31, 0
sub $22, $31, $23
jal jump40
lui $31, 0
beq $31, $22, label88
nop
label89:
lw $23, 2080($31)
lw $22, 7720($31)
sub $31, $23, $23
jal jump41
sw $31, 0($0)
nop
ori $24, $31, 0xfb17
lw $31, -2940($31)
nop
lw $31, 1808($31)
jal jump42
sw $31, 0($0)
jal jump43
lui $1, 0xffff
add $22, $24, $22
ori $22, $24, 0x85ed
add $24, $24, $24
sw $24, 2352($23)
add $24, $24, $22
jal jump44
sw $31, 0($0)
lw $3, 5204($3)
ori $3, $31, 0x7eb1
beq $4, $4, label90
nop
label91:
lui $2, 0x92ad
sub $4, $31, $31
sw $4, -12996($31)
lw $3, -11216($31)
sw $3, 12284($4)
nop
beq $2, $4, label92
nop
label93:
lw $2, 1128($3)
add $4, $31, $31
ori $2, $2, 0x9ba8
sw $31, 10440($3)
beq $31, $4, label94
nop
label95:
ori $2, $2, 0xce7f
ori $4, $31, 0x30d9
lui $3, 0x80a2
lui $4, 0x30cd
sub $3, $3, $3
beq $4, $4, label96
lui $3, 0x94db
label97:
nop
beq $4, $2, label98
nop
label99:
jal jump45
sw $31, 0($0)
sub $3, $4, $2
beq $2, $4, label100
nop
label101:
sub $31, $31, $3
nop
sub $3, $4, $2
beq $2, $4, label102
nop
label103:
jal jump46
sw $31, 0($0)
lw $4, -9056($31)
beq $3, $4, label104
nop
label105:
lui $3, 0x181b
jal jump47
lui $1, 0xffff
ori $4, $3, 0x5a89
nop
ori $4, $3, 0xf01e
sw $2, -12228($31)
lw $2, -2068($31)
lw $2, 6496($3)
add $2, $2, $31
jal jump48
sw $31, 0($0)
ori $3, $3, 0xb2f
jal jump49
sw $31, 0($0)
ori $3, $2, 0xa7e0
beq $0, $0, end
nop
label0:
beq $10, $9, label1
sub $8, $10, $9
label2:
beq $10, $8, label3
nop
label4:
beq $9, $8, label5
nop
jump0:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
add $8, $8, $31
label6:
beq $31, $31, label7
sw $31, -1688($31)
label8:
beq $9, $8, label9
nop
jump1:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
sub $9, $31, $10
jump2:
lw $31, 0($0)
jr $31
sw $10, -1268($9)
label10:
beq $10, $31, label11
nop
label12:
beq $10, $8, label13
lui $9, 0x58f
jump3:
ori $31, $31, 12404
jr $31
sw $9, 5452($8)
label14:
beq $31, $10, label15
nop
label16:
beq $8, $9, label17
nop
label18:
beq $9, $8, label19
nop
jump4:
ori $31, $31, 12492
jr $31
sub $9, $31, $31
label20:
beq $31, $9, label21
nop
label22:
beq $9, $8, label23
nop
jump5:
lw $31, 0($0)
jr $31
add $31, $10, $9
jump6:
lw $31, 0($0)
jr $31
lw $31, 4868($5)
label24:
beq $6, $5, label25
sw $5, 908($6)
label26:
beq $5, $6, label27
sw $6, 10112($5)
jump7:
lw $31, 0($0)
jr $31
add $4, $5, $31
jump8:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
lui $6, 0x76d5
jump9:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
lui $31, 0x2e3a
jump10:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
nop
jump11:
lw $31, 0($0)
jr $31
ori $6, $4, 0x4e7f
label28:
beq $31, $5, label29
nop
jump12:
ori $31, $31, 12656
jr $31
nop
label30:
beq $4, $6, label31
nop
label32:
beq $6, $31, label33
nop
label34:
beq $31, $31, label35
lui $6, 0xd948
label36:
beq $5, $5, label37
nop
jump13:
lw $31, 0($0)
jr $31
add $6, $6, $31
label38:
beq $6, $4, label39
nop
label40:
beq $6, $5, label41
nop
label42:
beq $31, $5, label43
nop
label44:
beq $6, $4, label45
nop
jump14:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
add $31, $31, $4
label46:
beq $7, $7, label47
add $8, $7, $7
jump15:
lw $31, 0($0)
jr $31
nop
jump16:
lw $31, 0($0)
jr $31
add $8, $8, $7
jump17:
lw $31, 0($0)
jr $31
nop
jump18:
lw $31, 0($0)
jr $31
sub $9, $9, $7
jump19:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
nop
label48:
beq $31, $8, label49
nop
label50:
beq $31, $8, label51
nop
jump20:
ori $31, $31, 12928
jr $31
nop
jump21:
ori $31, $31, 12944
jr $31
add $7, $8, $9
jump22:
lw $31, 0($0)
jr $31
sub $31, $9, $31
label52:
beq $8, $31, label53
nop
label54:
beq $8, $31, label55
nop
jump23:
ori $31, $31, 13004
jr $31
add $7, $7, $9
jump24:
lw $31, 0($0)
jr $31
nop
jump25:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
ori $7, $9, 0xc428
label56:
beq $31, $31, label57
nop
jump26:
lw $31, 0($0)
jr $31
sub $20, $19, $31
jump27:
ori $31, $31, 13064
jr $31
nop
jump28:
ori $31, $31, 13072
jr $31
ori $31, $31, 0x7fbf
jump29:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
add $19, $18, $31
label58:
beq $31, $31, label59
lw $18, -2244($31)
label60:
beq $19, $31, label61
nop
label62:
beq $31, $31, label63
lw $20, -1200($31)
jump30:
lw $31, 0($0)
jr $31
lui $19, 0x7903
label64:
beq $19, $31, label65
nop
jump31:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
nop
jump32:
lw $31, 0($0)
jr $31
lw $18, 4680($18)
label66:
beq $31, $18, label67
nop
jump33:
lw $31, 0($0)
jr $31
sub $20, $19, $18
jump34:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
ori $19, $19, 0xe6f4
label68:
beq $18, $31, label69
nop
label70:
beq $31, $18, label71
nop
jump35:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
add $20, $19, $18
label72:
beq $24, $23, label73
ori $31, $24, 0x8659
label74:
beq $23, $24, label75
add $22, $23, $24
label76:
beq $24, $31, label77
nop
label78:
beq $22, $23, label79
lui $24, 0x1180
jump36:
lw $31, 0($0)
jr $31
nop
label80:
beq $22, $23, label81
nop
jump37:
ori $31, $31, 13388
jr $31
add $23, $24, $22
jump38:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
nop
label82:
beq $24, $23, label83
nop
label84:
beq $31, $22, label85
nop
label86:
beq $24, $24, label87
lui $22, 0x98e5
jump39:
ori $31, $31, 13436
jr $31
lui $22, 0xc38e
jump40:
ori $31, $31, 13448
jr $31
ori $22, $22, 0xbc35
label88:
beq $31, $22, label89
nop
jump41:
lw $31, 0($0)
jr $31
lui $22, 0x7fe5
jump42:
lw $31, 0($0)
jr $31
add $31, $24, $23
jump43:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
nop
jump44:
lw $31, 0($0)
jr $31
add $22, $23, $22
label90:
beq $4, $4, label91
nop
label92:
beq $2, $4, label93
nop
label94:
beq $31, $4, label95
nop
label96:
beq $4, $4, label97
nop
label98:
beq $4, $2, label99
nop
jump45:
lw $31, 0($0)
jr $31
lui $31, 0x720b
label100:
beq $2, $4, label101
nop
label102:
beq $2, $4, label103
nop
jump46:
lw $31, 0($0)
jr $31
nop
label104:
beq $3, $4, label105
nop
jump47:
ori $1, $1, 0xfffc
add $31, $1, $31
jr $31
add $3, $4, $4
jump48:
lw $31, 0($0)
jr $31
nop
jump49:
lw $31, 0($0)
jr $31
add $2, $2, $4
end:
