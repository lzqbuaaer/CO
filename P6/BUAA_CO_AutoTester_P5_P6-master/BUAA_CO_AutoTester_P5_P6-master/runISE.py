# -*- coding:utf-8 -*-
import myParser
import platform
import os

config=myParser.prjPath_parser()
projectPath=config["prjPath"]    # 你创建的cpu的工程路径，已自动识别
xilinxPath = "/opt/Xilinx/14.7/ISE_DS/ISE/"  # 你的下载的ISE的路径

tb_module_name="mips_txt" #改为你的tb模块名称，p6的课程组tb模块名称为mips_txt

os.chdir(projectPath)
os.environ['XILINX'] = xilinxPath  # 设置环境变量

sys = platform.system()
if sys == "Windows":
    os.system(xilinxPath + f"bin/nt64/fuse -nodebug -prj {tb_module_name}.prj -o mips.exe {tb_module_name} > mips.log")  # 编译
    os.system(f"mips.exe -nolog -tclbatch mips.tcl > res.txt")  # 运行
else:
    os.system(xilinxPath + f"bin/lin64/fuse -nodebug -prj {tb_module_name}_stx_beh.prj -o mips {tb_module_name} > mips.log")  # 编译
    os.system(f"./mips -nolog -tclbatch mips.tcl > res.txt")  # 运行
