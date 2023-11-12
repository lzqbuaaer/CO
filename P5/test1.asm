.text
	ori		$t1, $0, 4
	ori		$t0, $0, 4
	sw		$t0, 0($0)
	ori		$t0, $0, 8
	sw		$t0, 4($0)
	ori		$t0, $0, 12
	sw		$t0, 8($0)
	
	lw		$t0, 4($0)
	add		$t0, $t0, $t1
	
	lw		$t0, 4($t0)
	ori		$t0, 8
	
	lw		$t0, 12($v0)
	sw		$t0, 4($0)
	
	lw		$t0, 12($v0)
	sw		$t0, 0($t0)
	
	ori		$t0, $v0, 4
	beq		$t0, $t0, Tag1
	ori		$s1, $v0, 256


Tag1:
	lui		$t0, 100
	beq		$t0, $t0, Tag2
	ori		$s1, $v0, 256
	
Tag2:
	ori		$t0, 100
	beq		$t0, $t0, Tag3
	ori		$s1, $v0, 256
	
Tag3:
	lw		$t0, 4($v0)
	beq		$t0, $t0, Tag4
	ori		$s1, $v0, 256

Tag4:
	jal		Tag5

Tag5:
	ori		$31, $0, 4
	jr		$31