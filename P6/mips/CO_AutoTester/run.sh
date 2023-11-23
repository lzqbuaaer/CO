#!/bin/bash
shellPath=`cd "$(dirname "$0")";pwd`
echo -e "run 20000ns;\nexit" > $shellPath/../mips.tcl 
cd $shellPath
python main.py --test_size 150 > pylog.txt 
timeout 5s java -jar Mars_CO_v0.4.1.jar code.asm db nc mc CompactLargeText coL1 ig > log.txt
java -jar Mars_CO_v0.4.1.jar code.asm db mc CompactDataAtZero a dump .text HexText $shellPath/../code.txt  # code.txt会生成至你搭建的cpu工程目录下
python runISE.py --prjPath $shellPath/.. # 如果你希望使用以下功能，需要将code.txt修改至cpu工程目录的绝对路径
python compare.py --prjPath $shellPath/..