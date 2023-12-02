ori $0 $0 65488
ori $1 $0 10767
ori $2 $0 44904
ori $3 $0 26244
ori $4 $0 39815
ori $5 $0 28136
ori $6 $0 41282
ori $7 $0 20101
ori $8 $0 61259
ori $9 $0 23926
ori $10 $0 13766
ori $11 $0 49479
ori $12 $0 48983
ori $13 $0 2284
ori $14 $0 61861
ori $15 $0 9629
ori $16 $0 1757
ori $17 $0 30380
ori $18 $0 51666
ori $19 $0 8165
ori $20 $0 15885
ori $21 $0 9650
ori $22 $0 4797
ori $23 $0 51057
ori $24 $0 1825
ori $25 $0 56905
ori $26 $0 41727
ori $27 $0 29460
ori $28 $0 17273
ori $29 $0 60754
ori $30 $0 52078
ori $31 $0 4053
andi $22 $23 19076
mult $24 $22
ori $24 $25 18694
mtlo $22
ori $22 $0 3096
sw $22 9120($22)
mfhi $22
ori $23 $23 1
div $23 $23
ori $23 $0 8879
sb $25 -6243($23)
ori $23 $0 29165
sw $24 -24505($23)
slt $24 $23 $23
or $25 $22 $25
mult $22 $22
ori $23 $0 14352
lh $25 -4090($23)
sltu $25 $25 $24
ori $25 $25 1
divu $25 $25
nop 
ori $24 $0 18657
lw $22 -16293($24)
ori $25 $0 17552
lw $24 -15116($25)
nop 
multu $24 $24
andi $25 $23 18649
ori $24 $24 58520
mtlo $24
ori $23 $0 9062
sw $23 1610($23)
ori $22 $22 1
div $22 $22
and $24 $25 $25
andi $24 $24 50676
slt $24 $23 $25
ori $23 $25 16863
ori $23 $0 30832
lb $22 -25844($23)
ori $24 $0 6987
lh $25 -5849($24)
or $24 $24 $24
sub $25 $25 $23
ori $23 $0 11551
sb $23 -11413($23)
addi $23 $25 5084
mthi $23
ori $25 $25 1
divu $25 $25
mfhi $23
ori $23 $0 8143
lw $24 -4503($23)
addi $23 $23 25715
mflo $23
add $24 $24 $25
andi $22 $25 10787
addi $25 $22 11768
ori $23 $0 30722
sh $23 -24834($23)
ori $25 $25 1
divu $24 $25
sltu $23 $23 $24
ori $25 $25 1
divu $25 $25
and $23 $25 $24
ori $25 $22 10552
mflo $22
mflo $25
add $24 $24 $24
multu $25 $23
multu $24 $22
mtlo $25
ori $23 $0 29878
sh $23 -21840($23)
mthi $22
mflo $25
mthi $23
mult $24 $24
add $23 $25 $23
ori $23 $0 7164
lb $23 1677($23)
mult $24 $22
ori $25 $0 18492
lh $23 -13174($25)
ori $23 $0 32696
sb $22 -24201($23)
ori $23 $0 4620
sh $24 3794($23)
slt $25 $23 $25
mfhi $23
mthi $22
multu $25 $22
ori $22 $0 9140
sw $23 -1596($22)
mflo $24
sltu $22 $24 $24
ori $22 $22 1
div $22 $22
ori $22 $25 56245
ori $23 $0 23331
lh $25 -19311($23)
ori $22 $0 14176
lb $22 -14106($22)
mtlo $22
ori $24 $0 17829
lw $24 -5773($24)
andi $22 $23 19761
ori $22 $0 23443
lb $24 -21554($22)
mfhi $22
addi $24 $22 15596
ori $25 $0 551
sh $23 11511($25)
ori $25 $25 34689
ori $22 $0 24058
lb $22 -14316($22)
nop 
mthi $25
mflo $23
sub $22 $22 $25
add $22 $22 $22
mflo $24
ori $25 $25 48983
ori $22 $0 14673
lb $24 -10014($22)
or $25 $25 $23
mfhi $23
addi $23 $24 -10988
and $22 $25 $24
mthi $25
ori $23 $23 1
div $22 $23
mtlo $23
sub $23 $24 $24
sltu $24 $22 $25
ori $24 $0 8269
sh $22 -8167($24)
ori $24 $0 10443
lb $22 -3197($24)
or $24 $23 $24
ori $22 $0 8033
lh $25 -3441($22)
and $25 $23 $24
ori $24 $24 1
div $22 $24
ori $23 $0 11316
lb $23 -10159($23)
ori $24 $24 1
divu $22 $24
ori $22 $22 1
div $23 $22
ori $22 $0 26643
lb $22 -22946($22)
ori $25 $25 1
div $24 $25
ori $24 $24 1
div $24 $24
slt $23 $22 $25
ori $22 $23 46538
ori $24 $0 27092
lw $23 -24144($24)
ori $22 $22 1
divu $23 $22
ori $22 $22 1
divu $23 $22
ori $25 $0 32589
lb $25 -29481($25)
ori $25 $25 1
div $23 $25
and $22 $24 $25
sltu $25 $22 $22
ori $25 $25 1
divu $22 $25
ori $24 $25 58210
multu $24 $23
ori $23 $0 14939
lw $24 -13155($23)
nop 
multu $24 $24
ori $24 $24 1
divu $23 $24
and $24 $24 $23
mult $24 $23
ori $25 $0 14521
sb $25 -3820($25)
and $25 $24 $25
mflo $24
mult $22 $25
lui $22 35153
or $24 $22 $24
ori $24 $24 1
div $25 $24
ori $23 $0 30627
lb $25 -23393($23)
andi $23 $25 3499
mtlo $25
mtlo $22
multu $23 $22
ori $23 $0 27726
lb $25 -22302($23)
ori $22 $0 2422
lh $23 9360($22)
ori $25 $0 25561
lh $25 -19395($25)
mflo $23
sltu $24 $25 $24
slt $23 $22 $23
add $23 $24 $24
or $22 $24 $23
slt $22 $23 $25
ori $23 $0 14273
sh $25 -3621($23)
ori $25 $0 28084
sh $25 -21088($25)
sub $23 $24 $25
mult $25 $24
ori $25 $0 14587
lh $23 -5367($25)
ori $23 $0 12668
lh $24 -9914($23)
mthi $22
nop 
or $23 $23 $25
slt $25 $23 $25
slt $22 $25 $24
nop 
ori $24 $0 9916
sb $25 -65($24)
addi $25 $25 -10721
sltu $24 $22 $24
mtlo $25
sub $25 $22 $25
and $22 $23 $25
and $22 $24 $22
sub $23 $24 $23
addi $24 $25 17408
mthi $23
mult $24 $25
mthi $23
ori $24 $24 1
div $25 $24
ori $22 $22 1
div $25 $22
mflo $22
ori $23 $0 20824
sw $24 -12396($23)
or $25 $23 $22
sub $22 $23 $22
ori $25 $0 29412
sh $25 -29002($25)
mfhi $23
mult $23 $25
ori $24 $24 59384
mtlo $22
mflo $22
ori $22 $0 13820
lh $24 -8444($22)
mthi $23
add $24 $23 $23
ori $23 $24 4291
mfhi $25
ori $25 $0 32012
lh $23 -28082($25)
ori $24 $0 26753
lb $25 -19553($24)
lui $24 16155
lui $22 9689
mtlo $24
and $22 $25 $24
ori $25 $0 25305
sw $22 -22233($25)
sltu $24 $23 $25
ori $24 $24 1
div $25 $24
ori $22 $0 6866
lb $24 -325($22)
mflo $25
multu $22 $23
ori $25 $0 19070
sh $23 -11498($25)
mult $23 $22
ori $25 $25 1
divu $24 $25
sub $22 $23 $22
andi $23 $24 44362
andi $24 $25 34549
ori $24 $24 1
divu $25 $24
lui $23 6566
or $25 $23 $22
and $23 $23 $25
ori $24 $24 1
divu $23 $24
ori $24 $24 1
div $25 $24
ori $24 $0 24039
lh $24 -18629($24)
lui $25 48105
mtlo $22
ori $22 $0 26140
lw $23 -14364($22)
or $24 $24 $22
multu $25 $22
nop 
multu $25 $22
mthi $25
sltu $24 $24 $22
ori $25 $25 1
div $25 $25
slt $22 $25 $22
ori $25 $25 27662
ori $25 $0 11572
lh $24 -1880($25)
slt $24 $24 $25
add $22 $23 $22
and $25 $24 $23
andi $25 $23 18150
ori $23 $23 1
divu $25 $23
mult $25 $23
slt $24 $22 $25
ori $25 $0 29846
sh $25 -23172($25)
add $25 $23 $23
multu $22 $24
mfhi $23
ori $24 $0 28631
lh $25 -17151($24)
andi $25 $25 27524
ori $22 $0 29226
lw $22 -21234($22)
sltu $23 $22 $25
ori $24 $0 29039
lb $25 -20660($24)
sltu $23 $25 $22
mthi $25
ori $25 $0 3075
lb $24 3650($25)
lui $24 29161
mfhi $22
mflo $25
ori $23 $0 2084
sb $25 4265($23)
or $22 $22 $25
ori $25 $0 29401
sw $22 -19685($25)
add $24 $23 $22
lui $24 21000
add $22 $25 $23
and $23 $24 $25
ori $25 $0 28587
lw $22 -20983($25)
ori $24 $0 26734
lb $22 -15048($24)
lui $22 17636
mult $22 $23
sub $25 $24 $24
add $23 $25 $25
and $22 $23 $22
lui $22 58008
ori $24 $0 9113
sb $23 1991($24)
sltu $22 $22 $24
slt $25 $25 $23
ori $24 $0 2911
sh $24 1829($24)
mflo $22
mult $22 $23
ori $25 $0 26444
sb $24 -21835($25)
or $23 $25 $23
ori $25 $0 14274
lb $23 -9270($25)
ori $22 $22 1
div $22 $22
ori $23 $0 31588
sh $24 -24722($23)
lui $23 4925
and $24 $25 $24
mtlo $22
lui $23 16470
addi $24 $22 -30823
mfhi $22
ori $23 $0 10949
sh $23 -7037($23)
addi $25 $25 -2101
ori $25 $0 18160
lw $24 -6764($25)
addi $24 $23 29448
ori $25 $25 1
div $24 $25
ori $23 $23 1
divu $22 $23
mthi $22
ori $25 $0 18675
lh $25 -7587($25)
multu $23 $23
sub $24 $23 $25
mult $23 $25
and $24 $25 $23
addi $25 $22 -14958
mflo $23
ori $23 $0 3701
lb $25 1185($23)
slt $25 $22 $24
add $22 $24 $25
ori $25 $25 1
div $24 $25
andi $23 $24 31812
lui $23 27814
ori $24 $0 23783
lb $22 -15880($24)
or $25 $24 $23
add $22 $25 $23
mthi $25
ori $24 $25 49227
ori $22 $25 36987
sub $22 $23 $24
addi $24 $25 28607
add $25 $25 $24
ori $25 $0 13839
sw $23 -10143($25)
ori $23 $0 20515
lw $23 -13347($23)
mthi $22
ori $25 $0 16059
sw $23 -12187($25)
slt $25 $22 $24
ori $22 $0 18498
sb $22 -9674($22)
ori $23 $0 24765
lw $23 -15465($23)
mtlo $25
ori $23 $0 25860
sh $25 -24682($23)
ori $24 $0 10689
lh $22 903($24)
addi $25 $22 2760
sltu $23 $25 $25
ori $24 $0 27124
lb $25 -16274($24)
sub $23 $25 $25
ori $23 $0 7735
sh $23 -1197($23)
ori $24 $0 18104
sh $25 -6366($24)
add $24 $25 $25
andi $23 $25 10042
ori $25 $24 12705
lui $23 43761
mtlo $23
sltu $23 $23 $22
mult $24 $23
sub $24 $24 $25
ori $24 $0 8707
sw $24 -5607($24)
mtlo $22
ori $23 $0 32228
lw $25 -24096($23)
slt $22 $23 $23
ori $25 $0 18616
lb $23 -14291($25)
mflo $23
or $24 $24 $24
slt $25 $25 $24
ori $22 $0 30154
sb $23 -29926($22)
addi $25 $23 6164
mflo $22
ori $25 $25 1
divu $22 $25
nop 
addi $22 $22 23573
ori $25 $25 1
div $24 $25
or $25 $25 $24
multu $25 $23
andi $24 $23 45765
ori $23 $0 9593
lb $23 -2242($23)
mthi $22
ori $22 $0 2205
lh $22 4613($22)
nop 
mult $23 $25
andi $24 $23 46091
add $23 $22 $22
and $23 $22 $25
nop 
ori $24 $0 19178
lw $24 -13514($24)
slt $23 $24 $22
mflo $24
mfhi $24
and $25 $25 $24
slt $23 $23 $25
or $23 $24 $24
or $22 $25 $23
mflo $22
addi $25 $24 624
sub $24 $24 $22
ori $25 $0 8335
lw $24 -6851($25)
lui $23 43829
ori $22 $0 5730
lw $22 -2782($22)
mult $23 $25
ori $24 $0 21276
lb $22 -9418($24)
add $24 $22 $24
add $22 $23 $24
slt $24 $23 $23
sltu $23 $25 $24
nop 
andi $25 $24 50863
nop 
ori $25 $24 53451
andi $25 $22 47808
add $24 $23 $22
ori $22 $22 1
divu $23 $22
mthi $22
nop 
ori $25 $24 28444
ori $22 $0 6980
lb $25 3498($22)
mfhi $24
mfhi $22
sub $22 $24 $23
addi $24 $23 13669
ori $24 $0 4893
sh $25 -2499($24)
ori $24 $0 15955
sh $24 -5977($24)
nop 
sub $23 $23 $24
multu $22 $25
mult $25 $22
ori $24 $24 10029
ori $24 $24 1
divu $24 $24
ori $23 $23 1
divu $23 $23
addi $25 $23 30222
mthi $23
ori $24 $24 1
divu $22 $24
sltu $25 $23 $23
ori $23 $23 1
div $25 $23
add $23 $22 $23
ori $22 $0 30034
lh $24 -20112($22)
ori $25 $0 27662
sw $23 -16962($25)
sub $24 $22 $24
ori $24 $24 1
div $22 $24
ori $25 $25 1
divu $22 $25
ori $25 $24 60133
mult $24 $25
mult $24 $25
ori $23 $0 845
lw $23 4263($23)
lui $23 4500
and $24 $23 $24
or $23 $23 $22
ori $25 $0 7697
lh $24 1969($25)
and $24 $23 $24
ori $23 $0 31149
sh $22 -26921($23)
mtlo $22
multu $24 $23
mult $23 $25
mflo $23
slt $24 $24 $22
ori $24 $0 27543
sb $24 -16541($24)
ori $22 $0 20788
sb $22 -19279($22)
ori $22 $22 1
divu $25 $22
slt $23 $24 $23
ori $24 $24 1
div $23 $24
mflo $24
mthi $25
multu $23 $25
ori $23 $0 20938
lb $25 -13539($23)
ori $24 $24 1
div $22 $24
ori $22 $0 26402
lw $24 -21390($22)
ori $22 $22 1
div $22 $22
mthi $23
and $24 $25 $25
multu $22 $24
ori $25 $25 1
divu $24 $25
add $25 $24 $24
multu $22 $23
sub $25 $25 $25
or $22 $24 $25
mtlo $24
ori $23 $0 32597
lb $24 -22810($23)
ori $23 $0 23724
lw $23 -16448($23)
nop 
ori $22 $22 1
divu $23 $22
mult $25 $23
or $25 $23 $23
or $24 $25 $24
ori $22 $0 10572
lw $25 -6980($22)
and $22 $23 $23
ori $25 $24 54941
mtlo $23
or $25 $25 $24
addi $24 $25 -24471
ori $25 $0 22496
lh $22 -14246($25)
ori $25 $0 18264
lw $25 -9148($25)
ori $23 $0 16850
sw $24 -12878($23)
lui $24 11124
ori $23 $0 31497
lw $23 -22161($23)
ori $24 $24 1
div $24 $24
ori $25 $0 23377
lw $22 -20897($25)
slt $25 $22 $24
lui $25 46349
nop 
ori $23 $23 1
div $24 $23
ori $24 $0 20861
lw $24 -11361($24)
mthi $23
andi $22 $23 45737
mflo $23
or $22 $25 $22
ori $23 $0 30645
lh $23 -27689($23)
mfhi $24
ori $22 $22 1
divu $24 $22
lui $22 18751
ori $25 $0 1261
sb $25 7748($25)
add $22 $23 $22
multu $25 $23
mfhi $25
ori $25 $0 27262
lh $23 -15342($25)
ori $23 $0 19801
lw $25 -8081($23)
mult $24 $24
mfhi $25
jal jal_conflict101_start
or $14 $31 $10
jal_conflict101_start: 
beq $31 $31 jal_conflict101_end
jal_conflict101_end: nop
jal jal_normal_start
nop 
slt $16 $13 $15
sub $11 $16 $14
ori $17 $0 2706
lb $17 5786($17)
mthi $10
ori $21 $0 2632
lw $20 2176($21)
ori $17 $8 30339
ori $13 $0 1294
sh $20 5152($13)
sub $13 $19 $9
sub $20 $21 $18
lui $15 21621
jal jal_normal_end
jal_normal_start: nop
ori $20 $16 6647
ori $9 $17 25593
ori $20 $0 18601
sw $17 -15585($20)
or $21 $20 $11
addi $10 $18 28559
mult $21 $9
ori $13 $0 29935
lb $9 -23415($13)
sltu $17 $8 $12
mtlo $8
andi $14 $13 27705
add $14 $13 $10
ori $11 $0 16714
lb $18 -9730($11)
nop 
ori $20 $0 7906
lh $8 -6184($20)
andi $11 $8 13431
sub $20 $14 $13
multu $16 $21
andi $8 $16 33219
nop 
or $9 $13 $19
jr $31
jal_normal_end: nop
multu $9 $9
ori $8 $8 9
add $8 $17 $9
multu $8 $9
mfhi $10
mtlo $17
mthi $9
addi $9 $8 9
ori $8 $0 15696
lh $17 -12964($8)
mthi $17
addi $17 $9 9
mthi $17
lui $8 17
mult $9 $17
multu $9 $8
ori $17 $0 19835
sh $8 -12767($17)
ori $8 $17 9
multu $17 $9
ori $17 $0 12094
lh $17 -11930($17)
ori $17 $0 30618
sw $17 -28654($17)
ori $9 $9 17
mtlo $9
lui $9 17
ori $8 $0 25956
lh $17 -24562($8)
ori $9 $0 29779
lb $9 -24537($9)
mthi $17
multu $8 $8
ori $8 $0 5404
sh $17 -412($8)
mfhi $10
ori $17 $8 17
multu $17 $9
ori $8 $0 20430
sb $17 -17579($8)
ori $9 $0 28008
lb $17 -18581($9)
add $17 $9 $17
add $8 $17 $17
ori $9 $0 11257
sh $9 -6711($9)
nop 
mflo $14
ori $9 $9 9
ori $8 $0 536
sh $9 2368($8)
andi $8 $9 8
andi $9 $17 17
ori $9 $0 28533
sw $8 -17625($9)
mflo $10
sub $9 $17 $8
mfhi $20
ori $9 $0 26408
lw $8 -15984($9)
ori $17 $0 10978
sw $17 -1774($17)
sub $17 $9 $17
lui $9 8
mfhi $8
ori $8 $0 4421
lb $17 -2922($8)
ori $9 $8 9
and $9 $8 $8
ori $8 $0 31481
lh $17 -23583($8)
ori $17 $0 12990
lw $8 -8318($17)
multu $8 $17
ori $17 $0 9369
sh $8 1055($17)
addi $17 $8 17
slt $8 $17 $8
addi $9 $8 8
sub $9 $9 $8
ori $8 $0 7136
sw $8 -5816($8)
addi $8 $17 17
mthi $9
mflo $9
mtlo $8
multu $8 $9
ori $17 $0 20794
sw $9 -12930($17)
mthi $17
and $8 $9 $17
mflo $12
addi $17 $8 8
ori $9 $0 29663
lb $17 -28470($9)
mfhi $17
sub $9 $8 $17
ori $9 $0 18085
sw $9 -6049($9)
ori $9 $0 14827
lw $9 -14091($9)
multu $8 $8
ori $8 $8 1
div $8 $8
ori $17 $0 14560
lh $8 -7758($17)
and $17 $17 $17
and $17 $9 $17
mult $8 $17
nop 
multu $8 $9
ori $17 $0 258
sb $17 6456($17)
ori $8 $0 852
sh $9 1006($8)
mult $17 $8
ori $17 $0 24639
lh $9 -12697($17)
ori $8 $8 1
div $9 $8
ori $8 $0 1716
sh $9 -628($8)
and $8 $17 $8
sub $8 $17 $17
ori $9 $8 9
add $17 $8 $8
mthi $17
ori $9 $9 1
div $17 $9
add $17 $9 $8
multu $8 $17
ori $9 $0 20663
lb $17 -15157($9)
ori $8 $8 1
divu $9 $8
slt $17 $8 $17
mflo $9
mfhi $19
mflo $15
ori $8 $17 17
nop 
ori $9 $0 6115
sh $8 467($9)
slt $17 $17 $8
multu $9 $9
multu $17 $8
nop 
ori $8 $8 1
div $17 $8
mtlo $17
and $9 $17 $9
ori $9 $0 8005
sh $8 4209($9)
andi $8 $9 17
nop 
sub $8 $9 $17
and $9 $17 $8
ori $17 $0 4849
lh $9 -401($17)
or $9 $8 $9
lui $8 8
addi $17 $9 9
multu $17 $8
addi $8 $8 8
ori $9 $0 17368
sh $9 -14778($9)
lui $9 17
ori $9 $0 2513
sh $8 8557($9)
mthi $8
mtlo $9
nop 
ori $17 $0 10374
sh $17 -2632($17)
multu $9 $9
or $17 $17 $17
nop 
ori $9 $0 20791
sh $17 -19149($9)
ori $17 $0 658
sh $17 9642($17)
and $17 $8 $9
ori $17 $17 1
divu $9 $17
add $17 $17 $17
ori $8 $0 17988
lh $8 -9288($8)
nop 
nop 
ori $9 $0 21405
sw $8 -13877($9)
addi $8 $17 9
ori $17 $0 9027
lw $9 -2347($17)
and $8 $8 $9
or $9 $9 $17
mthi $9
mtlo $17
mthi $8
addi $8 $8 17
ori $9 $9 1
divu $8 $9
addi $17 $9 9
sub $9 $8 $17
ori $8 $0 21891
lh $8 -12171($8)
or $9 $9 $17
mult $8 $8
ori $9 $0 18720
lh $8 -17372($9)
and $17 $9 $17
sub $9 $8 $17
mult $8 $8
mult $17 $9
or $9 $9 $8
sub $8 $17 $17
ori $9 $0 20782
sw $8 -19042($9)
addi $17 $17 17
ori $8 $0 2489
sh $17 6121($8)
sltu $8 $9 $9
slt $17 $17 $17
andi $8 $17 17
ori $17 $0 20136
sh $8 -12248($17)
ori $8 $0 17954
sb $9 -9442($8)
ori $17 $17 1
divu $8 $17
mfhi $8
multu $8 $17
or $17 $17 $17
ori $9 $0 23461
sw $17 -19853($9)
mthi $8
add $17 $9 $8
ori $8 $8 1
div $17 $8
sltu $8 $8 $9
or $17 $8 $9
or $9 $8 $9
ori $17 $9 9
mflo $11
nop 
ori $8 $8 1
divu $8 $8
lui $9 8
mthi $17
ori $9 $0 29887
lh $9 -28187($9)
sltu $17 $9 $17
mfhi $10
ori $17 $0 105
sh $17 10787($17)
mult $9 $9
and $17 $17 $9
slt $9 $9 $9
ori $17 $0 17926
sw $8 -9802($17)
or $8 $8 $9
ori $8 $8 8
mthi $8
ori $17 $17 1
divu $17 $17
mfhi $12
ori $17 $17 1
divu $9 $17
slt $8 $17 $17
ori $9 $0 25918
sb $17 -20477($9)
ori $9 $0 25734
sw $8 -24470($9)
ori $8 $8 8
sub $9 $17 $9
mult $8 $17
and $9 $17 $8
ori $17 $8 8
ori $8 $9 17
addi $8 $9 17
nop 
or $8 $9 $9
ori $8 $0 13510
sb $8 -5420($8)
mthi $9
or $17 $9 $9
add $17 $17 $17
mflo $9
addi $9 $9 17
addi $9 $8 8
ori $8 $0 14374
lh $17 -3964($8)
sltu $17 $9 $8
slt $9 $8 $8
addi $17 $9 9
mthi $8
mtlo $8
slt $17 $17 $8
mfhi $21
nop 
lui $8 8
addi $8 $9 8
lui $8 9
lui $17 8
ori $9 $9 1
divu $17 $9
sltu $17 $8 $9
ori $17 $0 32573
lw $17 -25577($17)
ori $9 $9 1
div $9 $9
ori $17 $0 14674
sw $9 -10074($17)
sltu $17 $17 $9
mthi $17
or $9 $17 $17
ori $8 $0 2444
sh $9 360($8)
ori $9 $9 1
div $17 $9
ori $17 $17 1
div $9 $17
lui $8 17
and $17 $8 $8
ori $8 $0 25582
sb $8 -25248($8)
ori $17 $8 17
ori $9 $0 14864
lb $8 -4088($9)
addi $8 $17 9
addi $8 $8 9
andi $17 $17 17
or $17 $8 $17
mult $8 $9
mflo $13
ori $8 $17 17
ori $17 $17 1
divu $8 $17
ori $17 $0 14488
sw $8 -12028($17)
mflo $20
addi $8 $8 9
sub $8 $8 $8
slt $9 $9 $17
ori $8 $0 14413
sw $8 -4405($8)
mtlo $17
addi $9 $17 9
ori $17 $17 1
div $9 $17
mtlo $8
ori $17 $0 3099
sb $17 2846($17)
ori $9 $0 31454
sh $17 -25032($9)
nop 
ori $8 $8 1
divu $8 $8
and $9 $9 $17
mfhi $13
slt $17 $8 $9
add $9 $8 $9
ori $9 $9 1
div $9 $9
ori $8 $8 17
sub $9 $17 $17
add $8 $8 $17
ori $8 $8 1
divu $17 $8
andi $8 $9 17
ori $8 $9 17
mtlo $8
lui $17 9
add $8 $17 $8
mfhi $14
nop 
ori $17 $17 1
div $8 $17
sltu $8 $8 $9
addi $17 $9 8
or $8 $9 $8
multu $17 $9
mtlo $9
ori $9 $0 27981
lb $9 -15735($9)
ori $8 $0 6508
sw $9 -2132($8)
addi $16 $21 -30214
mthi $18
ori $10 $0 30228
lb $11 -27233($10)
beq $11 $0 beqConflict1_end
ori $15 $0 30186
lh $17 -18866($15)
mfhi $15
beqConflict1_end: nop
sub $13 $16 $20
sltu $12 $16 $13
ori $17 $0 8389
sb $20 -6577($17)
beq $12 $13 beqConflict2_end
or $16 $15 $15
mult $16 $16
beqConflict2_end: nop
slt $19 $14 $14
ori $20 $0 8961
sw $9 -1717($20)
or $19 $17 $17
beq $9 $19 beqConflict3_end
mthi $15
ori $17 $0 12933
lw $15 -8713($17)
beqConflict3_end: nop
ori $15 $0 7128
sb $17 -3457($15)
ori $13 $0 27806
lw $21 -24310($13)
lui $10 30721
beq $17 $10 beqConflict4_end
ori $16 $16 1
div $17 $16
addi $17 $15 -10320
beqConflict4_end: nop
ori $2 $0 32342
ori $3 $0 24617
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict5_end
ori $15 $15 1
div $15 $15
ori $15 $15 1
div $16 $15
beqConflict5_end: nop
ori $21 $0 29323
sw $19 -17767($21)
ori $19 $0 24348
lh $11 -21172($19)
mtlo $21
beq $0 $19 beqConflict6_end
ori $16 $16 12346
mult $17 $17
beqConflict6_end: nop
or $13 $13 $19
mult $13 $19
ori $17 $0 13966
lb $10 -4880($17)
beq $13 $0 beqConflict7_end
mtlo $15
multu $16 $17
beqConflict7_end: nop
ori $16 $12 51800
mthi $9
ori $14 $14 65412
beq $14 $0 beqConflict8_end
lui $16 20304
sub $17 $15 $16
beqConflict8_end: nop
slt $20 $19 $21
nop 
addi $12 $12 23044
beq $20 $12 beqConflict9_end
slt $15 $15 $17
mtlo $16
beqConflict9_end: nop
ori $2 $0 49846
ori $3 $0 30158
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict10_end
multu $17 $17
or $17 $17 $16
beqConflict10_end: nop
nop 
ori $13 $13 1
div $13 $13
multu $20 $17
beq $0 $0 beqConflict11_end
or $17 $15 $15
and $16 $16 $16
beqConflict11_end: nop
ori $18 $0 19323
sw $13 -14807($18)
ori $15 $0 13376
sb $11 -7243($15)
ori $16 $0 11707
sb $17 -11299($16)
beq $17 $13 beqConflict12_end
ori $15 $0 23395
sw $15 -17823($15)
slt $15 $15 $17
beqConflict12_end: nop
lui $19 42627
ori $10 $10 1
div $8 $10
slt $19 $11 $13
beq $0 $19 beqConflict13_end
addi $16 $17 10354
or $16 $15 $15
beqConflict13_end: nop
or $10 $19 $12
sltu $18 $16 $18
mult $20 $17
beq $0 $18 beqConflict14_end
sub $16 $15 $15
mfhi $17
beqConflict14_end: nop
ori $2 $0 64690
ori $3 $0 12330
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict15_end
or $15 $16 $17
ori $17 $0 4837
lb $15 5160($17)
beqConflict15_end: nop
ori $18 $0 20914
sb $17 -11660($18)
addi $18 $21 -22724
ori $18 $0 15077
sh $21 -11819($18)
beq $21 $18 beqConflict16_end
ori $17 $0 24577
sw $17 -23457($17)
mult $17 $17
beqConflict16_end: nop
ori $8 $0 18092
sh $9 -16108($8)
mtlo $11
mfhi $21
beq $21 $9 beqConflict17_end
mthi $16
ori $16 $0 23687
lh $15 -22299($16)
beqConflict17_end: nop
ori $8 $0 21540
sb $17 -12395($8)
ori $11 $0 29106
sb $18 -19858($11)
mthi $10
beq $18 $0 beqConflict18_end
mflo $16
ori $15 $15 1
divu $16 $15
beqConflict18_end: nop
ori $20 $0 30130
sw $12 -25366($20)
sub $13 $21 $17
ori $8 $0 24277
sb $19 -17466($8)
beq $12 $19 beqConflict19_end
or $15 $17 $15
mthi $15
beqConflict19_end: nop
ori $2 $0 13272
ori $3 $0 9627
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict20_end
ori $16 $0 25848
lb $16 -25272($16)
mtlo $15
beqConflict20_end: nop
ori $9 $0 14546
lh $12 -8116($9)
ori $12 $12 1
div $11 $12
mthi $17
beq $0 $12 beqConflict21_end
addi $16 $16 31830
add $16 $17 $17
beqConflict21_end: nop
andi $9 $21 16272
lui $14 24829
multu $20 $20
beq $14 $9 beqConflict22_end
ori $17 $17 1
div $17 $17
mtlo $17
beqConflict22_end: nop
addi $16 $13 30718
sltu $8 $21 $13
mflo $18
beq $16 $8 beqConflict23_end
sltu $15 $17 $15
ori $17 $17 1
divu $15 $17
beqConflict23_end: nop
ori $10 $14 26210
ori $8 $0 22656
sw $8 -11028($8)
sub $19 $12 $9
beq $19 $8 beqConflict24_end
ori $16 $0 19322
lb $17 -10798($16)
lui $15 13116
beqConflict24_end: nop
ori $2 $0 60657
ori $3 $0 23873
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict25_end
mthi $17
ori $15 $0 12746
lh $17 -4000($15)
beqConflict25_end: nop
or $19 $15 $14
ori $21 $0 10271
sh $18 -10243($21)
mult $9 $14
beq $19 $0 beqConflict26_end
ori $15 $16 46449
andi $16 $17 60044
beqConflict26_end: nop
ori $9 $9 1
divu $20 $9
ori $21 $21 1
divu $18 $21
ori $17 $0 15776
sw $20 -5240($17)
beq $0 $0 beqConflict27_end
add $17 $16 $16
mfhi $17
beqConflict27_end: nop
sltu $16 $21 $19
ori $12 $0 20918
lb $21 -10074($12)
multu $15 $19
beq $0 $16 beqConflict28_end
slt $15 $16 $16
addi $16 $16 -26084
beqConflict28_end: nop
ori $15 $15 1
divu $16 $15
ori $17 $17 1
divu $11 $17
ori $17 $0 24832
lb $10 -16109($17)
beq $0 $0 beqConflict29_end
and $17 $17 $17
sub $17 $17 $15
beqConflict29_end: nop
ori $2 $0 34848
ori $3 $0 6368
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict30_end
ori $16 $0 14146
sh $17 -8578($16)
add $16 $16 $17
beqConflict30_end: nop
nop 
and $18 $9 $21
sltu $15 $17 $21
beq $18 $15 beqConflict31_end
or $16 $17 $15
sub $17 $15 $15
beqConflict31_end: nop
nop 
nop 
mflo $20
beq $20 $0 beqConflict32_end
mflo $15
andi $15 $15 18028
beqConflict32_end: nop
sltu $12 $20 $19
mult $12 $12
lui $18 54375
beq $0 $12 beqConflict33_end
slt $17 $16 $16
sub $16 $16 $17
beqConflict33_end: nop
ori $16 $0 11217
lh $20 -7909($16)
sltu $20 $17 $18
ori $21 $0 29794
lw $18 -24070($21)
beq $20 $20 beqConflict34_end
ori $16 $0 4496
lb $17 2778($16)
ori $17 $0 3226
lb $15 -2908($17)
beqConflict34_end: nop
ori $2 $0 22430
ori $3 $0 2877
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict35_end
nop 
multu $16 $15
beqConflict35_end: nop
ori $15 $0 24039
lh $8 -19521($15)
slt $16 $19 $20
addi $13 $17 29703
beq $16 $13 beqConflict36_end
mfhi $17
ori $16 $0 30101
sh $16 -28917($16)
beqConflict36_end: nop
ori $13 $13 1
divu $20 $13
mfhi $19
ori $19 $0 16288
lb $17 -9665($19)
beq $0 $17 beqConflict37_end
mthi $17
multu $17 $17
beqConflict37_end: nop
slt $8 $19 $11
ori $10 $0 25182
sh $13 -13564($10)
lui $10 54515
beq $10 $13 beqConflict38_end
addi $17 $17 -10244
mflo $17
beqConflict38_end: nop
and $13 $11 $15
add $13 $21 $9
slt $8 $18 $21
beq $8 $13 beqConflict39_end
addi $15 $17 1997
mflo $16
beqConflict39_end: nop
ori $2 $0 4006
ori $3 $0 11745
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict40_end
ori $16 $0 2722
lb $17 276($16)
lui $17 45019
beqConflict40_end: nop
ori $9 $0 2941
sw $19 3051($9)
slt $12 $8 $19
ori $15 $0 15911
lb $20 -6414($15)
beq $19 $12 beqConflict41_end
sltu $15 $16 $16
lui $16 59716
beqConflict41_end: nop
or $17 $14 $14
mult $8 $17
mflo $16
beq $16 $0 beqConflict42_end
mflo $16
mfhi $17
beqConflict42_end: nop
add $19 $18 $11
mfhi $12
mthi $8
beq $0 $12 beqConflict43_end
mfhi $17
mthi $17
beqConflict43_end: nop
mfhi $20
ori $16 $19 56024
ori $18 $12 28499
beq $16 $18 beqConflict44_end
mult $17 $15
andi $17 $16 45797
beqConflict44_end: nop
ori $2 $0 3
ori $3 $0 32492
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict45_end
ori $17 $0 26017
lw $17 -24049($17)
ori $17 $17 1
div $16 $17
beqConflict45_end: nop
and $9 $9 $13
or $17 $8 $19
and $13 $19 $15
beq $13 $9 beqConflict46_end
ori $15 $0 21641
lw $15 -19117($15)
sltu $15 $15 $15
beqConflict46_end: nop
ori $9 $0 6619
sw $19 -5575($9)
multu $14 $12
ori $16 $0 28409
lb $14 -19309($16)
beq $14 $0 beqConflict47_end
add $15 $17 $16
sub $17 $17 $15
beqConflict47_end: nop
ori $10 $0 2559
lh $14 -857($10)
ori $20 $0 48
sh $18 1976($20)
ori $14 $14 1
div $17 $14
beq $14 $18 beqConflict48_end
mflo $16
or $17 $15 $16
beqConflict48_end: nop
ori $11 $0 24751
sw $15 -18995($11)
ori $15 $0 1055
lw $11 2621($15)
multu $21 $10
beq $11 $0 beqConflict49_end
ori $15 $0 4888
sh $15 -1114($15)
ori $16 $15 33614
beqConflict49_end: nop
ori $2 $0 59047
ori $3 $0 30906
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict50_end
ori $15 $0 8464
lb $17 -4257($15)
add $17 $16 $17
beqConflict50_end: nop
andi $8 $9 30733
and $13 $13 $15
lui $12 15878
beq $12 $8 beqConflict51_end
ori $17 $17 1
divu $16 $17
mflo $15
beqConflict51_end: nop
ori $21 $21 1
div $13 $21
or $19 $17 $18
sub $21 $19 $8
beq $0 $19 beqConflict52_end
ori $17 $0 12006
lh $17 -2264($17)
multu $15 $16
beqConflict52_end: nop
ori $14 $0 30217
lw $16 -24697($14)
sltu $15 $21 $19
add $17 $15 $9
beq $16 $15 beqConflict53_end
ori $16 $0 16674
lb $15 -7857($16)
mtlo $15
beqConflict53_end: nop
mfhi $14
or $17 $12 $11
or $19 $12 $12
beq $19 $14 beqConflict54_end
ori $16 $17 47225
mflo $15
beqConflict54_end: nop
ori $2 $0 38014
ori $3 $0 3329
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict55_end
mthi $17
mtlo $16
beqConflict55_end: nop
andi $15 $13 56360
mult $20 $14
ori $10 $0 20393
lb $9 -15616($10)
beq $15 $9 beqConflict56_end
ori $17 $15 39211
ori $15 $0 20023
sw $15 -13479($15)
beqConflict56_end: nop
or $16 $13 $17
slt $9 $18 $15
andi $14 $10 33594
beq $14 $16 beqConflict57_end
multu $17 $17
multu $16 $17
beqConflict57_end: nop
or $20 $21 $21
addi $16 $12 4727
sltu $17 $20 $20
beq $20 $16 beqConflict58_end
mflo $17
mfhi $16
beqConflict58_end: nop
ori $14 $0 30903
sb $20 -24466($14)
ori $16 $0 13150
sh $9 -12948($16)
and $18 $9 $13
beq $20 $9 beqConflict59_end
ori $17 $0 28400
lb $15 -22923($17)
ori $15 $15 64184
beqConflict59_end: nop
ori $2 $0 40167
ori $3 $0 3724
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict60_end
andi $15 $16 30629
lui $16 13627
beqConflict60_end: nop
lui $21 558
or $16 $16 $21
ori $10 $0 21134
sh $19 -9104($10)
beq $16 $19 beqConflict61_end
ori $16 $0 4036
sh $17 -1412($16)
mfhi $15
beqConflict61_end: nop
ori $9 $16 7802
slt $12 $18 $9
mthi $19
beq $0 $12 beqConflict62_end
or $17 $17 $17
ori $17 $0 7537
lh $17 -7379($17)
beqConflict62_end: nop
mflo $17
ori $12 $0 3758
sb $18 7554($12)
mtlo $18
beq $17 $0 beqConflict63_end
mflo $15
ori $15 $16 31991
beqConflict63_end: nop
ori $10 $0 20217
lh $19 -8613($10)
sltu $10 $18 $21
ori $11 $0 24744
lb $8 -21443($11)
beq $8 $10 beqConflict64_end
ori $17 $17 1
div $16 $17
andi $15 $16 21670
beqConflict64_end: nop
ori $2 $0 43133
ori $3 $0 9013
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict65_end
ori $16 $16 1
div $17 $16
ori $17 $0 23212
sw $16 -12440($17)
beqConflict65_end: nop
ori $14 $0 8630
sw $17 -966($14)
multu $14 $12
addi $16 $12 7520
beq $0 $16 beqConflict66_end
multu $15 $16
and $17 $16 $15
beqConflict66_end: nop
mflo $8
ori $16 $0 29964
lw $13 -27536($16)
and $20 $13 $9
beq $13 $20 beqConflict67_end
sltu $15 $15 $15
sltu $15 $15 $15
beqConflict67_end: nop
ori $18 $0 19847
lw $10 -8815($18)
nop 
slt $14 $10 $10
beq $14 $10 beqConflict68_end
add $15 $17 $15
ori $15 $0 1561
sb $15 3708($15)
beqConflict68_end: nop
mthi $11
mult $9 $10
multu $21 $12
beq $0 $0 beqConflict69_end
mtlo $16
ori $17 $15 32242
beqConflict69_end: nop
ori $2 $0 64121
ori $3 $0 4327
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict70_end
mflo $15
sltu $17 $15 $17
beqConflict70_end: nop
ori $20 $0 5597
sb $16 -1417($20)
mfhi $8
and $18 $21 $16
beq $18 $16 beqConflict71_end
andi $17 $15 42434
sub $16 $15 $16
beqConflict71_end: nop
mthi $14
and $17 $14 $10
or $12 $21 $14
beq $12 $17 beqConflict72_end
lui $16 21562
addi $15 $16 2529
beqConflict72_end: nop
ori $15 $15 1
divu $9 $15
ori $9 $0 21386
lh $21 -10680($9)
multu $21 $16
beq $0 $21 beqConflict73_end
slt $16 $16 $16
lui $15 31169
beqConflict73_end: nop
multu $18 $14
multu $8 $10
lui $14 1872
beq $0 $14 beqConflict74_end
ori $16 $16 1
div $16 $16
lui $17 1264
beqConflict74_end: nop
ori $2 $0 6222
ori $3 $0 13555
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict75_end
slt $16 $15 $15
ori $16 $15 37593
beqConflict75_end: nop
ori $21 $0 6830
sb $8 -1084($21)
nop 
addi $17 $15 13429
beq $8 $17 beqConflict76_end
ori $16 $0 10201
sb $16 -2975($16)
ori $16 $0 3024
lh $15 4826($16)
beqConflict76_end: nop
ori $18 $0 31202
lb $15 -27180($18)
mult $18 $15
nop 
beq $0 $0 beqConflict77_end
ori $15 $0 12736
sb $16 -1497($15)
mthi $17
beqConflict77_end: nop
and $13 $21 $20
sltu $10 $10 $20
andi $11 $19 26608
beq $11 $10 beqConflict78_end
slt $17 $16 $15
mfhi $16
beqConflict78_end: nop
and $12 $8 $17
ori $13 $21 52439
ori $18 $0 8572
lh $8 3320($18)
beq $13 $8 beqConflict79_end
multu $16 $17
mthi $16
beqConflict79_end: nop
ori $2 $0 10494
ori $3 $0 29989
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict80_end
addi $16 $16 18705
sltu $16 $17 $15
beqConflict80_end: nop
ori $9 $9 1
divu $14 $9
mult $9 $12
mthi $12
beq $0 $0 beqConflict81_end
add $15 $17 $17
mflo $15
beqConflict81_end: nop
sltu $8 $12 $17
sltu $18 $12 $18
mflo $21
beq $18 $8 beqConflict82_end
ori $15 $0 17225
lh $17 -10091($15)
ori $15 $16 31863
beqConflict82_end: nop
ori $10 $12 63668
mflo $20
slt $18 $12 $14
beq $18 $10 beqConflict83_end
mthi $16
add $15 $15 $16
beqConflict83_end: nop
mtlo $13
nop 
add $18 $10 $14
beq $0 $0 beqConflict84_end
sltu $17 $16 $17
mthi $15
beqConflict84_end: nop
ori $2 $0 5779
ori $3 $0 644
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict85_end
andi $15 $16 2489
ori $17 $0 22104
lb $15 -22102($17)
beqConflict85_end: nop
mfhi $10
mtlo $21
sub $19 $19 $13
beq $19 $0 beqConflict86_end
ori $17 $0 190
lh $16 8980($17)
ori $17 $17 1
divu $17 $17
beqConflict86_end: nop
sub $13 $15 $15
addi $21 $16 -11068
ori $16 $0 2388
lw $13 5200($16)
beq $13 $13 beqConflict87_end
ori $17 $0 8710
lb $17 -1844($17)
slt $16 $17 $16
beqConflict87_end: nop
sub $8 $12 $20
andi $21 $10 25504
ori $14 $0 10596
sw $21 -1056($14)
beq $8 $21 beqConflict88_end
lui $16 260
ori $17 $0 13697
lb $17 -4418($17)
beqConflict88_end: nop
addi $17 $20 25138
mult $11 $9
mfhi $15
beq $17 $15 beqConflict89_end
add $16 $17 $17
ori $17 $0 29944
lh $16 -18278($17)
beqConflict89_end: nop
ori $2 $0 46087
ori $3 $0 23739
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict90_end
ori $17 $17 1
divu $17 $17
ori $16 $15 23243
beqConflict90_end: nop
ori $19 $0 223
sb $18 3081($19)
ori $19 $0 13486
lh $12 -5132($19)
ori $9 $0 30407
lh $17 -28803($9)
beq $12 $18 beqConflict91_end
mtlo $16
mflo $16
beqConflict91_end: nop
sub $18 $19 $13
ori $15 $0 26367
lh $13 -21013($15)
slt $9 $18 $19
beq $18 $9 beqConflict92_end
mthi $15
lui $16 20642
beqConflict92_end: nop
ori $21 $0 5287
sh $10 -287($21)
ori $16 $0 20226
sb $15 -19932($16)
nop 
beq $15 $0 beqConflict93_end
slt $15 $15 $17
ori $16 $16 1
div $17 $16
beqConflict93_end: nop
mtlo $21
ori $13 $13 1
div $9 $13
lui $19 11087
beq $19 $0 beqConflict94_end
sltu $15 $17 $16
mthi $17
beqConflict94_end: nop
ori $2 $0 59779
ori $3 $0 32575
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict95_end
mthi $17
ori $16 $0 23126
lh $17 -15880($16)
beqConflict95_end: nop
ori $12 $0 13478
lh $9 -12562($12)
ori $9 $13 48173
or $15 $19 $10
beq $15 $9 beqConflict96_end
andi $15 $15 57639
mult $15 $17
beqConflict96_end: nop
ori $15 $0 3047
lb $10 8828($15)
mthi $11
addi $15 $10 4841
beq $10 $15 beqConflict97_end
multu $17 $15
multu $17 $17
beqConflict97_end: nop
nop 
add $8 $17 $12
ori $15 $0 26826
sh $13 -19582($15)
beq $8 $0 beqConflict98_end
mfhi $15
mult $17 $16
beqConflict98_end: nop
mflo $11
andi $16 $20 14265
lui $10 36081
beq $11 $10 beqConflict99_end
ori $16 $0 2541
lb $16 9436($16)
nop 
beqConflict99_end: nop
ori $2 $0 32669
ori $3 $0 20167
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict100_end
sltu $17 $17 $16
mfhi $17
beqConflict100_end: nop
ori $2 $0 588
ori $3 $0 588
add $19 $2 $3
lw $15 0($19)
sw $19 0($19)
lw $3 0($19)
lw $17 0($3)
lui $19 0
lw $16 1128($19)
sw $19 0($19)
lw $3 0($19)
sw $19 0($3)
ori $17 $0 24544
lw $17 -24296($17)
ori $15 $17 1314
ori $16 $17 1314
ori $15 $17 1314
