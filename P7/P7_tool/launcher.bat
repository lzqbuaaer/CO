@echo off
title BUAA CO P7
cd %~dp0
set inputfile=%1
if not "%~1"=="" goto skip
set /p inputfile=请将.asm文件拖拽至此（若路径中存在空格，请添加引号）: 
:skip
cmd /c "%cd%/bin/main" %inputfile%
if not %errorlevel%==0 echo 很抱歉，评测过程中发生了意外错误，请联系作者！
pause
exit /b