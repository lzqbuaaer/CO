import myParser
import os

from instruction_set import generate_instruction
# -*- coding:utf-8 -*-


def run():
    config = myParser.prepare_parser()
    print(config)
    config['label_num'] = 0
    config['jump_num'] = 0

    print("---------------------------------------------------------------------------------------------"
          "-----------------------------------------------------------")
    print("The config of TestSuit:")
    print(config)
    print("---------------------------------------------------------------------------------------------"
          "-----------------------------------------------------------")

    asm_init, buffer, jumps = generate_instruction(config)

    file_name = 'code.asm'
    with open(file_name, "w") as file:
        if len(asm_init) != 0:
            for j in asm_init:
                file.write(j)

        for i in buffer:
            file.write(i)
        file.write("beq $0, $0, end\nnop\n")
        for i in jumps:
            file.write(i)
        file.write("end:\nnop\n")


if __name__ == '__main__':
    run()
