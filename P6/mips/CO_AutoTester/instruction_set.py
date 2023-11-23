import random
global reg
global mem
global hi
global lo
global pc
global config


def cpu_status_init():
    global config
    global pc
    init_asm = []

    for i in range(12278 // 4):
        mem[i * 4] = 0
        # print("we got mem word addr : %d" % (i * 4))
    if config['init']:
        for i in range(32):
            hi_byte = random.randint(0, 65536)
            lo_byte = random.randint(0, 65536)
            pc += 4
            init_asm.append("lui $%d, 0x%x\n" % (i, hi_byte))
            pc += 4
            init_asm.append("ori $%d, $%d, 0x%x\n" % (i, i, lo_byte))
            if i != 0:
                reg[i] = (hi_byte << 16) | lo_byte
    else:
        for i in range(32):
            reg[i] = 0

    print("InitStage:")
    for i in range(32):
        print("Init : $%d <= %x" % (i, reg[i]))
    print("---------------------------\nInitStage Finished\n---------------------------")

    return init_asm

def generate_instruction(conf):
    global reg
    global mem
    global hi
    global lo
    global config
    global pc
    config = conf
    reg = {}
    mem = {}
    reg[0] = 0
    pc = 0x0000_2ffc
    hi = 0
    lo = 0
    init_asm = cpu_status_init()
    if config['Project'] == 5:
        buffer, jumps = generate_instruction_P5()
    elif config['Project'] == 6:
        buffer, jumps = generate_instruction_P6()
    else:
        print("ERROR : Can't find ProjectIns, please ensure your have chosen Project 5 or 6")

    return init_asm, buffer, jumps


def generate_instruction_P5():
    global config
    global pc
    buffer = []
    jumps = []
    for i in range(config['test_size']):
        # first we select write_Instr
        suit = random.randint(1, 4)
        rs_write = random.randint(1, 31)
        rt_write = random.randint(1, 31)
        rd_write = random.randint(1, 31)
        if suit == 1:  # add sub ori
            pc += 4
            write_ins = select_from_write_2(rs_write, rt_write, rd_write)
        elif suit == 2:  # lw, attention here: we might get nop
            for j in range(20):
                write_ins = select_from_write_4(rs_write, rt_write, rd_write)
                rs_write = random.randint(1, 31)
                if write_ins != "nop\n":
                    break
            if write_ins == "nop\n":  # cannot find suitable load Ins, goto next epoch
                continue
            else:
                pc += 4
        elif suit == 3:  # jal()
            pc += 4
            write_ins = select_from_write_5()
        elif suit == 4:
            pc += 4
            write_ins = lui(rd_write)

        buffer.append(write_ins)

        # then we select three read_Instr, we must use rd_write as rs
        if suit == 3:  # is jal, we should write db, ins1, ins2, jr
            jumpstr = "jump%d:\n" % (config['jump_num'] - 1)
            jumps.append(jumpstr)
            rs = 31
            rt = random.randint(1, 30)
            rd = random.randint(1, 30)  # mustn't write $31
            pc += 4  # add pc for db
            for j in range(2):  # we wish rd in last epoch use as rt in this epoch
                read_op = random.randint(1, 2)  # don't generate beq/bne
                if read_op == 1:
                    for k in range(20):  # check if is nop
                        read_ins = select_from_read_1(rs, rt, rd)  # may be nop\n
                        if write_ins != "nop\n":
                            break
                    if j == 0:
                        buffer.append(read_ins)
                    else:
                        jumps.append(read_ins)
                elif read_op == 2:
                    for k in range(100):  # check if is nop
                        read_ins = select_from_read_3(rs, rt, rd) # may be nop\n
                        if write_ins != "nop\n":
                            break
                    if j == 0:
                        buffer.append(read_ins)
                    else:
                        jumps.append(read_ins)

                rt = rd
                rd = random.randint(1, 30)

            jumps.append(jr(rs, rt, rd))
        else:
            rs = rd_write
            rt = random.randint(1, 31)
            rd = random.randint(1, 31)
            for j in range(3):  # we wish rd in last epoch use as rt in this epoch
                pc += 4

                read_op = random.randint(1, 5)

                if read_op == 1:
                    for k in range(100):  # check if is nop
                        read_ins = select_from_read_1(rs, rt, rd) # may be nop\n
                        if write_ins != "nop\n":
                            break
                    buffer.append(read_ins)
                elif read_op == 2:
                    for k in range(100):  # check if is nop
                        read_ins = select_from_read_3(rs, rt, rd)  # may be nop\n
                        if write_ins != "nop\n":
                            break
                    buffer.append(read_ins)
                else:  # in last Instr we might get beq/bne, attention : nop is inside beq/bne func
                    pc += 4  # extra add pc for db
                    read_ins = select_from_read_5(rs, rt, rd)
                    label1 = "label%d:\n" % (config['label_num'] - 1)
                    config['label_num'] += 1
                    label2 = "label%d:\n" % (config['label_num'] - 1)
                    for pos in range(len(read_ins)):
                        if read_ins[pos] == "l":
                            substr = read_ins[:pos] + ("label%d\nnop\n" % (config['label_num'] - 1))
                            break
                    buffer.append(read_ins)
                    buffer.append(label2)
                    jumps.append(label1)
                    jumps.append(substr)

                    break

                rt = rd
                rd = random.randint(1, 31)

    return buffer, jumps


def generate_instruction_P6():
    global config
    global pc
    buffer = []
    jumps = []
    std = 0
    for i in range(config['test_size']):
        # first we select write_Instr
        suit = random.randint(1, 6)
        rs_write = random.randint(1, 31)
        rt_write = random.randint(1, 31)
        rd_write = random.randint(1, 31)
        if suit == 1:  # slt/sltu
            pc += 4
            for j in range(20):
                write_ins = select_from_write_1(rs_write, rt_write, rd_write)
                if write_ins != "nop\n":
                    break
                else:
                    rs_write = random.randint(1, 31)
                    rt_write = random.randint(1, 31)
                    rd_write = random.randint(1, 31)
        elif suit == 2:  # add sub and or addi andi ori
            pc += 4
            for j in range(20):
                write_ins = select_from_write_2(rs_write, rt_write, rd_write)
                if write_ins != "nop\n":
                    break
                else:
                    rs_write = random.randint(1, 31)
                    rt_write = random.randint(1, 31)
                    rd_write = random.randint(1, 31)
        elif suit == 3:  # mfhi, mflo
            pc += 4
            for j in range(20):
                write_ins = select_from_write_3(rs_write, rt_write, rd_write)
                if write_ins != "nop\n":
                    break
                else:
                    rs_write = random.randint(1, 31)
                    rt_write = random.randint(1, 31)
                    rd_write = random.randint(1, 31)
        elif suit == 4:  # lb lh lw, attention here: we might get nop
            for j in range(100):
                write_ins = select_from_write_4(rs_write, rt_write, rd_write)
                rs_write = random.randint(1, 31)
                if write_ins != "nop\n":
                    break
                else:
                    rs_write = random.randint(1, 31)
                    rt_write = random.randint(1, 31)
                    rd_write = random.randint(1, 31)
            if write_ins == "nop\n":  # cannot find suitable load Ins, goto next epoch
                continue
            else:
                pc += 4
        elif suit == 5:  # jal()
            pc += 4
            write_ins = select_from_write_5()
        elif suit == 6:
            pc += 4
            write_ins = lui(rd_write)

        buffer.append(write_ins)

        # then we select three read_Instr, we must use rd_write as rs
        if suit == 5:  # is jal, we should write db, ins1, ins2, jr
            jumpstr = "jump%d:\n" % (config['jump_num'] - 1)
            jumps.append(jumpstr)
            rs = 31
            rt = random.randint(1, 30)
            rd = random.randint(1, 30)  # mustn't write $31
            pc += 4  # add pc for db
            for j in range(2):  # we wish rd in last epoch use as rt in this epoch
                read_op = random.randint(1, 4)  # don't generate beq/bne in db
                if read_op == 1:
                    for k in range(100):  # check if is nop
                        read_ins = select_from_read_1(rs, rt, rd)  # may be nop\n
                        if write_ins != "nop\n":
                            break
                    if j == 0:
                        buffer.append(read_ins)
                    else:
                        jumps.append(read_ins)
                elif read_op == 2:
                    read_ins = select_from_read_2(rs, rt, rd)
                    if j == 0:
                        buffer.append(read_ins)
                    else:
                        jumps.append(read_ins)
                elif read_op == 3:
                    for k in range(100):  # check if is nop
                        read_ins = select_from_read_3(rs, rt, rd)  # may be nop\n
                        if write_ins != "nop\n":
                            break
                    if j == 0:
                        buffer.append(read_ins)
                    else:
                        jumps.append(read_ins)
                elif read_op == 4:
                    read_ins = select_from_read_4(rs, rt, rd)
                    if j == 0:
                        buffer.append(read_ins)
                    else:
                        jumps.append(read_ins)

                rt = rd
                rd = random.randint(1, 30)

            jumps.append(jr(rs, rt, rd))
        else:
            rs = rd_write
            rt = random.randint(1, 31)
            rd = random.randint(1, 31)
            for j in range(3):  # we wish rd in last epoch use as rt in this epoch
                pc += 4

                read_op = random.randint(1, 5)

                if read_op == 1:
                    for k in range(20):  # check if is nop
                        read_ins = select_from_read_1(rs, rt, rd)  # may be nop\n
                        if write_ins != "nop\n":
                            break
                    buffer.append(read_ins)
                elif read_op == 2:
                    read_ins = select_from_read_2(rs, rt, rd)
                    buffer.append(read_ins)
                elif read_op == 3:
                    for k in range(20):  # check if is nop
                        read_ins = select_from_read_3(rs, rt, rd)  # may be nop\n
                        if write_ins != "nop\n":
                            break
                    buffer.append(read_ins)
                elif read_op == 4:
                    read_ins = select_from_read_4(rs, rt, rd)
                    buffer.append(read_ins)
                else:  # Instr we might get beq/bne, nop is inside beq/bne func
                    pc += 4  # extra add pc for db

                    read_ins = select_from_read_5(rs, rt, rd)
                    label1 = "label%d:\n" % (config['label_num'] - 1)
                    config['label_num'] += 1
                    label2 = "label%d:\n" % (config['label_num'] - 1)
                    for pos in range(len(read_ins)):
                        if read_ins[pos] == "l":
                            substr = read_ins[:pos] + ("label%d\nnop\n" % (config['label_num'] - 1))
                            break
                    buffer.append(read_ins)
                    buffer.append(label2)
                    jumps.append(label1)
                    jumps.append(substr)

                    break  # just jump out of this group

                rt = rd
                rd = random.randint(1, 31)
    return buffer, jumps


def select_from_write_1(rs, rt, rd):  # slt/sltu
    op = random.randint(0, 1)
    if op == 0:
        if trans_to_signed(reg[rs], 32) < trans_to_signed(reg[rt], 32) and reg[rd] != 1:
            return slt(rs, rt, rd)
        elif trans_to_signed(reg[rs], 32) >= trans_to_signed(reg[rt], 32) and reg[rd] != 0:
            return slt(rs, rt, rd)
        else:
            return "nop\n"
    else:
        if reg[rs] < reg[rt] and reg[rd] != 1:
            return sltu(rs, rt, rd)
        elif reg[rs] >= reg[rt] and reg[rd] != 0:
            return sltu(rs, rt, rd)
        else:
            return "nop\n"


def select_from_write_2(rs, rt, rd):  # add sub and or addi andi ori lui
    global config
    if config['Project'] == 5:
        op = random.randint(0, 3)
    else:
        op = random.randint(0, 7)
    if op == 0:
        if reg[rd] != reg[rs] + reg[rt]:
            return add(rs, rt, rd)
        else:
            return "nop\n"
    elif op == 1:
        if reg[rd] != reg[rs] - reg[rt]:
            return sub(rs, rt, rd)
        else:
            return "nop\n"
    elif op == 2:
        return ori(rs, rd)
    elif op == 3:
        if reg[rd] & 0xffff != 0:
            return lui(rd)
        else:
            return "nop\n"
    elif op == 4:
        if reg[rd] != reg[rs] | reg[rt]:
            return OR(rs, rt, rd)
        else:
            return "nop\n"
    elif op == 5:
        return addi(rs, rd)  # ensure write reg[rd]
    elif op == 6:
        return andi(rs, rd)
    else:
        if reg[rd] != reg[rs] & reg[rt]:
            return AND(rs, rt, rd)
        else:
            return "nop\n"


def select_from_write_3(rs, rt, rd):  # mfhi, mflo
    op = random.randint(0, 1)
    if op == 0:
        if reg[rd] != hi:
            return mfhi(rd)
        else:
            return "nop\n"
    else:
        if reg[rd] != lo:
            return mflo(rd)
        else:
            return "nop\n"


def select_from_write_4(rs, rt, rd):  # lb lh lw, attention here: we might get nop
    if config['Project'] == 5:
        op = 2
    else:
        op = random.randint(0, 2)

    if op == 0:
        return lb(rs, rd)
    elif op == 1:
        return lh(rs, rd)
    else:
        return lw(rs, rd)


def select_from_write_5():  # jal
    return jal()


def select_from_read_1(rs, rt, rd):  # both use rs and rt -- mem
    if config['Project'] == 5:
        op = 2
    else:
        op = random.randint(0, 11)

    if op == 0:
        return sb(rs, rt)
    elif op == 1:
        return sh(rs, rt)
    elif op == 2:
        return sw(rs, rt)
    elif op == 3:
        return sb(rt, rs)
    elif op == 4:
        return sh(rt, rs)
    elif op == 5:
        return sw(rt, rs)
    elif op == 6:
        return sb(rs, rd)
    elif op == 7:
        return sh(rs, rd)
    elif op == 8:
        return sw(rs, rd)
    elif op == 9:
        return sb(rd, rs)
    elif op == 10:
        return sh(rd, rs)
    else:
        return sw(rd, rs)


def select_from_read_2(rs, rt, rd):  # slt/sltu
    op = random.randint(0, 1)
    if op == 0:
        return slt(rs, rt, rd)
    else:
        return sltu(rs, rt, rd)


def select_from_read_3(rs, rt, rd):  # add sub and or addi andi ori lb lh lw sb sh sw, it can be "nop\n"
    if config['Project'] == 5:
        op = random.randint(0, 5)
    else:
        op = random.randint(0, 22)  # ensure we use rs
    if op == 0:
        return add(rs, rt, rd)
    elif op == 1:
        return sub(rs, rt, rd)
    elif op == 2:
        return ori(rs, rd)
    elif op == 3:
        return sw(rs, rt)
    elif op == 4:
        return lw(rs, rt)
    elif op == 5:
        return sw(rt, rs)
    elif op == 6:
        return andi(rs, rt)
    elif op == 7:
        return AND(rs, rt, rd)
    elif op == 8:
        return lb(rs, rt)
    elif op == 9:
        return lh(rs, rt)
    elif op == 10:
        return addi(rs, rd)  # ensure we use reg[rs]
    elif op == 11:
        return sb(rs, rt)
    elif op == 12:
        return sh(rs, rt)
    elif op == 13:
        return OR(rs, rt, rd)
    elif op == 14:
        return sb(rt, rs)
    elif op == 15:
        return sh(rt, rs)
    elif op == 16:
        return sb(rd, rs)
    elif op == 17:
        return sh(rd, rs)
    elif op == 18:
        return sb(rs, rd)
    elif op == 19:
        return sh(rs, rd)
    elif op == 20:
        return lb(rs, rd)
    elif op == 21:
        return lh(rs, rd)
    elif op == 22:
        return lw(rs, rd)


def select_from_read_4(rs, rt, rd):  # mthi mtlo mult multu div divu
    op = random.randint(0, 5)
    if op == 0:
        return mthi(rs)
    elif op == 1:
        return mtlo(rs)
    elif op == 2:
        return mult(rs, rt)
    elif op == 3:
        return multu(rs, rt)
    elif op == 4:
        return div(rs, rt)
    else:
        return divu(rs, rt)


def select_from_read_5(rs, rt, rd):   # beq bne
    op = random.randint(0, 1)
    if op == 0 or config['Project'] == 5:
        return beq(rs, rt, rd)
    else:
        return bne(rs, rt, rd)

def add(rs, rt, rd):
    global reg
    ins = "add $%d, $%d, $%d\n" % (rd, rs, rt)
    if rd != 0:
        reg[rd] = (reg[rs] + reg[rt]) & (4294967296 - 1)
        print("@%x : $%d <= %8x" % (pc, rd, reg[rd]))
    return ins


def sub(rs, rt, rd):
    global reg
    ins = "sub $%d, $%d, $%d\n" % (rd, rs, rt)
    if rd != 0:
        reg[rd] = (reg[rs] - reg[rt]) & (4294967296 - 1)
        print("@%x : $%d <= %8x" % (pc, rd, reg[rd]))
    return ins


def AND(rs, rt, rd):
    global reg
    ins = "and $%d, $%d, $%d\n" % (rd, rs, rt)
    if rd != 0:
        reg[rd] = (reg[rs] & reg[rt]) & (4294967296 - 1)
        print("@%x : $%d <= %8x" % (pc, rd, reg[rd]))
    return ins


def OR(rs, rt, rd):
    global reg
    ins = "or $%d, $%d, $%d\n" % (rd, rs, rt)
    if rd != 0:
        reg[rd] = (reg[rs] | reg[rt]) & (4294967296 - 1)
        print("@%x : $%d <= %8x" % (pc, rd, reg[rd]))
    return ins


def slt(rs, rt, rd):  # all cal_ins ensure high Zero, so all is translated as unsigned
    global reg
    ins = "slt $%d, $%d, $%d\n" % (rd, rs, rt)
    if rd != 0:
        tmp1 = trans_to_signed(reg[rs], 32)
        tmp2 = trans_to_signed(reg[rt], 32)
        if tmp1 < tmp2 and rd != 0:
            reg[rd] = 1
            print("@%x : $%d <= %8x" % (pc, rd, reg[rd]))
        else:
            reg[rd] = 0
            print("@%x : $%d <= %8x" % (pc, rd, reg[rd]))
    return ins


def sltu(rs, rt, rd):  # all cal_ins ensure high Zero, so all is translated as unsigned
    global reg
    ins = "sltu $%d, $%d, $%d\n" % (rd, rs, rt)
    if rd != 0:
        tmp1 = reg[rs]
        tmp2 = reg[rt]
        if tmp1 < tmp2 and rd != 0:
            reg[rd] = 1
            print("@%x : $%d <= %8x" % (pc, rd, reg[rd]))
        else:
            reg[rd] = 0
            print("@%x : $%d <= %8x" % (pc, rd, reg[rd]))
    return ins


def addi(rs, rt):
    global reg
    if config['bound']:
        op = random.randint(0, 1)
        if op == 0:
            imm = random.randint(-32768, -32760)
        else:
            imm = random.randint(32760, 32767)
    else:
        imm = random.randint(-32768, 32767)
    ins = "addi $%d, $%d, %d\n" % (rt, rs, imm)  # require 0-ext, 0x0000_xxxx
    if rt != 0:
        reg[rt] = (reg[rs] + imm) & (4294967296 - 1)
    print("@%x : $%d <= %8x" % (pc, rt, reg[rt]))
    return ins


def andi(rs, rt):
    global reg
    if config['bound']:
        imm = random.randint(65530, 65535)
    else:
        imm = random.randint(0, 65535)
    ins = "andi $%d, $%d, 0x%x\n" % (rt, rs, imm)  # require 0-ext, 0x0000_xxxx
    if rt != 0:
        reg[rt] = (reg[rs] & (imm & (65536 - 1))) & (4294967296 - 1)
    print("@%x : $%d <= %8x" % (pc, rt, reg[rt]))
    return ins


def ori(rs, rt):
    global reg
    if config['bound']:
        imm = random.randint(65530, 65535)
    else:
        imm = random.randint(0, 65535)
    ins = "ori $%d, $%d, 0x%x # @%8x\n" % (rt, rs, imm, pc)  # require 0-ext, 0x0000_xxxx
    if rt != 0:
        reg[rt] = reg[rs] | imm
        print("@%x : $%d <= %8x" % (pc, rt, reg[rt]))
    return ins


def lb(rs, rt):
    global reg
    global mem
    imm = random.randint(0x0000_0, 0x0000_2)
    imm = imm << 12
    addr = random.randint(0, 3)
    imm = imm + addr
    imm = imm - reg[rs]
    if imm > 32767 or imm < -32768 or imm + reg[rs] > 0x0000_2ffc or imm + reg[rs] < 0:
        ins = "nop\n"
    else:
        ins = "lb $%d, %d($%d) # @%8x\n" % (rt, imm, rs, pc)
        pos = reg[rs] + imm - (reg[rs] + imm) % 4  # word-aligned
        memword = mem[pos]
        if addr == 0:
            regword = (memword & 0x0_0000_00ff)
            if regword & 128 == 128:  # 2^7
                regword = 0x0_ffff_ff00 | regword
        elif addr == 1:
            regword = (memword & 0x0_0000_ff00) >> 8
            if regword & 128 == 128:  # 2^7
                regword = 0x0_ffff_ff00 | regword
        elif addr == 2:
            regword = (memword & 0x0_00ff_0000) >> 16
            if regword & 128 == 128:  # 2^7
                regword = 0x0_ffff_ff00 | regword
        else:
            regword = (memword & 0x0_ff00_0000) >> 24
            if regword & 128 == 128:  # 2^7
                regword = 0x0_ffff_ff00 | regword
        if rt != 0:
            reg[rt] = regword
            print("@%x : $%d <= %8x" % (pc, rt, reg[rt]))

    return ins


def lh(rs, rt):
    global reg
    global mem
    imm = random.randint(0x0000_0, 0x0000_2)
    imm = imm << 12
    addr = random.randint(0, 1) * 2
    imm = imm + addr
    imm = imm - reg[rs]
    if imm > 32767 or imm < -32768 or imm + reg[rs] > 0x0000_2ffc or imm + reg[rs] < 0:
        ins = "nop\n"
    else:
        ins = "lh $%d, %d($%d) # @%8x\n" % (rt, imm, rs, pc)
        pos = reg[rs] + imm - (reg[rs] + imm) % 4  # word-aligned
        memword = mem[pos]
        if addr == 0:
            regword = (memword & 0x0_0000_ffff)
            if regword & 32768 == 32768:  # 2^15
                regword = 0x0_ffff_0000 | regword
        else:
            regword = (memword & 0x0_ffff_0000) >> 16
            if regword & 32768 == 32768:  # 2^15
                regword = 0x0_ffff_0000 | regword
        if rt != 0:
            reg[rt] = regword
            print("@%x : $%d <= %8x" % (pc, rt, reg[rt]))

    return ins


def lw(rs, rt):
    global reg
    global mem
    imm = random.randint(0x0000_0, 0x0000_2)
    imm = imm << 12
    imm = imm - reg[rs]
    if imm > 32767 or imm < -32768 or imm + reg[rs] > 0x0000_2ffc or imm + reg[rs] < 0:
        ins = "nop\n"
    else:
        ins = "lw $%d, %d($%d) # @%8x\n" % (rt, imm, rs, pc)
        if rt != 0:
            reg[rt] = mem[reg[rs] + imm]
            print("@%x : $%d <= %8x" % (pc, rt, reg[rt]))

    return ins


def sb(rs, rt):
    global reg
    global mem
    imm = random.randint(0x0000_0, 0x0000_2)
    imm = imm << 12
    addr = random.randint(0, 3)
    imm = imm + addr
    imm = imm - reg[rs]
    if imm > 32767 or imm < -32768 or imm + reg[rs] > 0x0000_2ffc or imm + reg[rs] < 0:
        ins = "nop\n"  # default return nop
    else:
        ins = "sb $%d, %d($%d) # @%8x\n" % (rt, imm, rs, pc)
        pos = reg[rs] + imm - (reg[rs] + imm) % 4  # word-aligned
        memword = mem[pos]
        if addr == 0:
            memword = (memword & 0x0_ffff_ff00) | (reg[rt] & 0xff)
        elif addr == 1:
            memword = (memword & 0x0_ffff_00ff) | ((reg[rt] & 0xff) << 8)
        elif addr == 2:
            memword = (memword & 0x0_ff00_ffff) | ((reg[rt] & 0xff) << 16)
        else:
            memword = (memword & 0x0_00ff_ffff) | ((reg[rt] & 0xff) << 24)
        mem[pos] = memword
        print("@%x : *%08x <= %x" % (pc, reg[rs] + imm - (reg[rs] + imm) % 4, memword))
    return ins


def sh(rs, rt):
    global reg
    global mem
    imm = random.randint(0x0000_0, 0x0000_2)
    imm = imm << 12
    addr = random.randint(0, 1) * 2
    imm = imm + addr
    imm = imm - reg[rs]
    if imm > 32767 or imm < -32768 or imm + reg[rs] > 0x0000_2ffc or imm + reg[rs] < 0:
        ins = "nop\n"  # default return nop
    else:
        ins = "sh $%d, %d($%d) # @%8x\n" % (rt, imm, rs, pc)
        pos = reg[rs] + imm - (reg[rs] + imm) % 4  # word-aligned
        memword = mem[pos]
        if addr == 0:
            memword = (memword & 0x0_ffff_0000) | (reg[rt] & 65535)
        else:
            memword = (memword & 0x0_0000_ffff) | ((reg[rt] & 65535) << 16)
        mem[pos] = memword
        print("@%x : *%08x <= %x" % (pc, reg[rs] + imm - (reg[rs] + imm) % 4, memword))
    return ins


def sw(rs, rt):
    global reg
    global mem
    imm = random.randint(0x0000_0, 0x0000_2)
    imm = imm << 12
    imm = imm - reg[rs]
    if imm > 32767 or imm < -32768 or imm + reg[rs] > 0x0000_2ffc or imm + reg[rs] < 0:
        ins = "nop\n"  # default return nop
    else:
        ins = "sw $%d, %d($%d) # @%8x\n" % (rt, imm, rs, pc)
        mem[reg[rs] + imm] = reg[rt]
        print("@%x : *%08x <= %x" % (pc, reg[rs] + imm, reg[rt]))

    return ins


def beq(rs, rt, rd):
    global reg
    ins = "beq $%d, $%d, label%d\n" % (rs, rt, config['label_num'])
    config['label_num'] += 1
    # opcode = random.randint(0, 5)
    # if reg[rs] != reg[rt]:
    #     db = nop()
    # elif opcode == 0 and rd != rs and rd != rt:
    #     db = add(rs, rt, rd)
    # elif opcode == 1 and rd != rs and rd != rt:
    #     db = sub(rs, rt, rd)
    # elif opcode == 2 and rd != rs and rd != rt:
    #     db = ori(rs, rd)
    # elif opcode == 3 and rd != rs and rd != rt:
    #     db = lui(rd)
    # elif opcode == 4 and (config['mixed'] or config['suit'] == 2) and rd != rs and rd != rt:
    #     db = lw(rs, rd)
    #     if db == "":
    #         db = nop()
    # elif opcode == 5 and (config['mixed'] or config['suit'] == 2):
    #     db = sw(rs, rt)
    #     if db == "":
    #         db = nop()
    # else:
    db = nop()
    ins = ins + db
    return ins


def bne(rs, rt, rd):
    global reg
    ins = "bne $%d, $%d, label%d\n" % (rs, rt, config['label_num'])
    config['label_num'] += 1
    db = nop()
    ins = ins + db
    return ins


def lui(rt):
    global reg
    op = random.randint(0, 1)
    if config['bound']:
        imm = random.randint(65530, 65535)
    else:
        imm = random.randint(0, 65535)

    if op == 0:
        imm = 0

    ins = "lui $%d, 0x%x\n" % (rt, imm)
    if rt != 0:
        reg[rt] = imm << 16
        print("@%x : $%d <= %8x" % (pc, rt, reg[rt]))
    return ins


def jal():
    global reg
    reg[31] = pc + 8
    ins = "jal jump%d\n" % config['jump_num']
    config['jump_num'] += 1
    # opcode = random.randint(0, 5)
    # if opcode == 0 and rd != 31:
    #     db = add(31, 0, 31)
    # elif opcode == 1 and rd != 31:
    #     db = sub(31, 0, 31)
    # elif opcode == 2 and rt != 31:
    #     db = ori(rs, rt)
    # elif opcode == 3 and rt != 31:
    #     db = lui(rt)
    # elif opcode == 4 and (config['mixed'] or config['suit'] == 2) and rt != 31 and rs != 31:  # untrack reg[31] = pc
    #     db = lw(rs, rt)
    #     if db == "":
    #         db = nop()
    # elif opcode == 5 and (config['mixed'] or config['suit'] == 2) and rs != 31:
    #     db = sw(rs, rt)
    #     if db == "":
    #         db = nop()
    # else:
    #     db = nop()
    # ins = ins + db
    print("@%x : $%d <= %8x" % (pc, 31, reg[31]))
    return ins


def jr(rs, rt, rd):
    global reg
    global std
    ins = "jr $31\n"
    # opcode = random.randint(0, 5)
    # if opcode == 0:
    #     db = add(rs, rt, rd)
    # elif opcode == 1:
    #     db = sub(rs, rt, rd)
    # elif opcode == 2:
    #     db = ori(rs, rt)
    # elif opcode == 3:
    #     db = lui(rt)
    # elif opcode == 4 and (config['mixed'] or config['suit'] == 2) and rs != 31:
    #     db = lw(rs, rd)
    #     if db == "":
    #         db = nop()
    # elif opcode == 5 and (config['mixed'] or config['suit'] == 2) and rs != 31:
    #     db = sw(rs, rt)
    #     if db == "":
    #         db = nop()
    # else:
    db = nop()
    ins = ins + db
    return ins


def nop():
    return "nop\n"


def mult(rs, rt):
    global hi
    global lo
    global reg
    ins = "mult $%d, $%d\n" % (rs, rt)
    t1 = trans_to_signed(reg[rs], 32)
    t2 = trans_to_signed(reg[rt], 32)
    res = t1 * t2
    hi = (res & 0x0_ffff_ffff_0000_0000) >> 32
    lo = (res & 0x0_0000_0000_ffff_ffff)
    return ins


def multu(rs, rt):
    global hi
    global lo
    global reg
    ins = "multu $%d, $%d\n" % (rs, rt)
    t1 = reg[rs]
    t2 = reg[rt]
    res = t1 * t2
    hi = (res & 0x0_ffff_ffff_0000_0000) >> 32
    lo = (res & 0x0_0000_0000_ffff_ffff)
    return ins


def div(rs, rt):  # rt must not 0
    global hi
    global lo
    global reg
    if reg[rt] != 0:
        ins = "div $%d, $%d\n" % (rs, rt)
        t1 = trans_to_signed(reg[rs], 32)
        t2 = trans_to_signed(reg[rt], 32)
        hi = (t1 % t2) & 0x0_ffff_ffff
        lo = (t1 // t2) & 0x0_ffff_ffff
    else:
        ins = "nop\n"
    return ins


def divu(rs, rt):  # rt must not 0
    global hi
    global lo
    global reg
    if reg[rt] != 0:
        ins = "divu $%d, $%d\n" % (rs, rt)
        t1 = reg[rs]
        t2 = reg[rt]
        hi = (t1 % t2) & 0x0_ffff_ffff
        lo = (t1 // t2) & 0x0_ffff_ffff
    else:
        ins = "nop\n"
    return ins


def mfhi(rs):
    global hi
    global lo
    global reg
    ins = "mfhi $%d\n" % rs
    reg[rs] = hi
    print("@%x : $%d <= %8x" % (pc, rs, reg[rs]))
    return ins


def mflo(rs):
    global hi
    global lo
    global reg
    ins = "mflo $%d\n" % rs
    reg[rs] = lo
    print("@%x : $%d <= %8x" % (pc, rs, reg[rs]))
    return ins

def mthi(rs):
    global hi
    global lo
    global reg
    ins = "mthi $%d\n" % rs
    hi = reg[rs]
    return ins

def mtlo(rs):
    global hi
    global lo
    global reg
    ins = "mtlo $%d\n" % rs
    lo = reg[rs]
    return ins

def trans_to_signed(unsigned, bits):
    # bits = 16 or 32
    signal = 1 << (bits - 1)
    if unsigned & signal != 0:
        val = unsigned - signal * 2
    else:
        val = unsigned
    return val