@echo off
echo 正在评测中，请耐心等待
set currentdir=%cd%
set /p XILINX= <./settings/ISEPath.txt
set /p prjpath= <./settings/ProjectPath.txt
java -jar ./bin/Mars_P7.jar %1 db nc lg ex mc LargeText 200000>./result/stdans_t.txt
if not %errorlevel%==0 exit /b %errorlevel%
"./bin/d0" <./result/stdans_t.txt >./result/stdans.txt
if not %errorlevel%==0 exit /b %errorlevel%
java -jar ./bin/Mars_P7.jar %1 a db nc ex mc LargeText dump 0x00003000-0x00004180 HexText "%prjpath%\textcode.txt"
if not %errorlevel%==0 exit /b %errorlevel%
java -jar ./bin/Mars_P7.jar %1 a db nc ex mc LargeText dump 0x00004180-0x00004ffc HexText "%prjpath%\ktextcode.txt"
if not %errorlevel%==0 exit /b %errorlevel%
"./bin/mg" "%prjpath%\textcode.txt" "%prjpath%\ktextcode.txt" >"%prjpath%\code.txt"
if not %errorlevel%==0 exit /b %errorlevel%
del "%prjpath%\textcode.txt"
del "%prjpath%\ktextcode.txt"
copy "%cd%\src\mips_auto_txt.v" "%prjpath%" >NUL
if not %errorlevel%==0 exit /b %errorlevel%
cd /d %prjpath%
if not %errorlevel%==0 exit /b %errorlevel%
echo >NUL 2>mips.prj
for %%f in ("*.v") do echo verilog work "%%f" >>mips.prj
"%XILINX%\bin\nt64\fuse.exe" -nodebug -prj mips.prj -o mips.exe mips_auto_txt >NUL
if not %errorlevel%==0 exit /b %errorlevel%
echo run 200.0us; >mips.tcl
echo exit >>mips.tcl
mips.exe -nolog -tclbatch mips.tcl >"%currentdir%\result\stuans_t.txt"
if not %errorlevel%==0 exit /b %errorlevel%
cd /d %currentdir%
"./bin/dt" <./result/stuans_t.txt >./result/stuans.txt
if not %errorlevel%==0 exit /b %errorlevel%
fc "%cd%\result\stdans.txt" "%cd%\result\stuans.txt" >NUL
if %errorlevel%==1 goto WA
if not %errorlevel%==0 exit /b %errorlevel%
echo 恭喜，您的输出与标准输出完全相同！
echo >NUL 2>"./result/diff.html"
exit /b 0
:WA
echo 您的输出与标准输出存在差异，请自行核对！
"./bin/diff" ./result/diff.html ./result/stdans.txt ./result/stuans.txt
if not %errorlevel%==0 exit /b %errorlevel%
start ./result/diff.html
exit /b 0
