# -*- coding:utf-8 -*-
import os

pathIsm = "D:\\lzq123\\co\\P5\\mips\\res.txt"
pathMars = "log.txt"

ise_log = []
mars_log = []

with open(pathMars, "r") as file:
    str = file.readline()
    while str is not None and str != "":
        if str[0] == "@":
            mars_log.append(str)
        str = file.readline()

with open(pathIsm, "r") as file:
    str = file.readline()
    while str is not None and str != "":
        for i in range(len(str)):
            if str[i] == "@":
                ise_log.append(str[i:])
                break
        str = file.readline()

length = min(len(mars_log), len(ise_log))

flag = 0
for i in range(length - 1):
    if ise_log[i] != mars_log[i]:
        print("We expect %s, but we got %s" % (mars_log[i], ise_log[i]))
        flag = 1

with open("compare.txt", "w") as file:
    flag = 0
    for i in range(length - 1):
        if ise_log[i] != mars_log[i]:
            file.write("We expect %s, but we got %s\n" % (mars_log[i], ise_log[i]))
            flag = 1

    if flag == 0:
        file.write("valid logNum:%d\nwe find no bug in this epoch!" % length)

