# CO_Auto_Tester Instructions
## 环境
Python 3.7

Anaconda 23.1.0
> 但是应该是有个Python就行，版本不重要，我就用了os/random/argparse三个库

## 参数设置
`--test_size`：单`.asm`文件内生成的测试组数量，一般一个测试组会对应到4-7条指令(但考虑到标签的存在，行的数量会多很多)，默认为150个测试组

`--init`：是否对所有寄存器进行初始化，默认为真（进行初始化会有效帮助数据冲突的发生）

`--bound`：是否对执行边界值测试，默认为否

`--Project`: 针对P5/P6进行测试，默认为6，如果希望生成P5数据则在`run.sh`中设置`--Project 5`，
或者修改`myParser.py`文件中对应设置

# 准备
1. 在项目目录中写好mips.v与tb文件

2. 将此测试程序目录放在项目目录之下

    文件层次结构:
    ```
    --project_dir
    ----mips.v
    ----mips.tcl
    ----mips.prj
    ----CO_AutoTester
    ------run.sh
    ------...
    ----ALU.v
    ----...
    ```

3. 修改`runISE.py`中的`xilinxPath`和`tb_module_name`，注意`tb_module_name`是模块名而不是文件名

# 运行
```.bash
./run.sh
```
你将获得本次生成机器码为`code.txt`，如果你按照`run.sh`内注释进行了修改，你将在`compare.txt`内看到本次运行结果

# 获取 & 声明
基于Toby学长的Mars进行的模拟，Mars.jar文件已在当前repo中