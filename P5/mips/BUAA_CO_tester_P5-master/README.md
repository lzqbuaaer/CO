#  Can Can Word auto-Tester
## 环境
Python 3.7

Anaconda 23.1.0
> 但是应该是有个Python就行，版本不重要，我就用了os/random/argparse三个库

## 参数设置
`--test_size`：单`.asm`文件内希望生成的指令数，默认为500条

`--init`：是否对所有寄存器进行初始化，默认为否

`--bound`：是否对执行边界值测试，默认为否

`--suit`：选取指令类别进行测试(suit1对应纯算数add/sub/ori/lui,suit2对应在suit1基础上加入lw/sw,注意使用suit测试时应设置mixed为False)，默认为1

`--mixed`: 对全部指令进行测试，在--mixed开启时忽略suit参数，默认为True

`--narrow`: 限制了寄存器选取范围，保证每50条指令涉及到的寄存器一定只有\[0, narrow]个(始终包含$ra)，默认为3

# 针对P5优化点
## 寄存器生成
仍采取随机数，但是保证每50条指令所涉及到的寄存器不多于narrow个，narrow参数设置越小，寄存器发生数据冒险概率越大

并且保证$ra始终被包含于上述寄存器中

## 指令行为
在每条b/j型指令后加入随机add/sub/ori/lui/sw/lw/nop作为延时槽，保证不会出现延时槽相关问题

版本更新v2.1后解决死循环问题，在该code.asm末尾设立跳转区，程序实时跟踪寄存器/内存行为

版本更新v2.1后解决字对齐+地址爆范围问题

版本更新v3.0,加入对于JAL指令后对寄存器$ra的写入（包括lw/add/ori）
# 准备
在顶层模块中写好对MIPS的tb文件，并命名为tb.v

在工程文件夹中加入文件mips.tcl文件，写入
```
run 20000ns;
exit
```

文件层次结构:
```
--dir
----mips.v
----mips.tcl
----mips.prj
----CO_tester_P5
------run.sh
------...
----ALU.v
----...
```

修改下列文件中所有绝对路径
```
compare.py
runISE.py
run.sh
```
# 运行
命令行`run.sh`即可，你将在`compare.txt`内看到本次运行结果

# 获取 & 声明
在github仓库https://github.com/CharlesSebastian1/BUAA_CO_tester_P5

基于Toby学长的Mars进行的模拟，Mars.jar文件已在当前repo中