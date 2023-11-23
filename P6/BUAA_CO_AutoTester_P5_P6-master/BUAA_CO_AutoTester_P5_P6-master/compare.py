# -*- coding:utf-8 -*-
import myParser
import os

config = myParser.prjPath_parser()
prjPath = config["prjPath"]

pathIsm = f"{prjPath}/res.txt"   # 将res.txt前的路径改为你搭建的cpu的工程路径
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

def arrange(length):
    for i in range(length - 1):
        mars_str = mars_log[i]
        for j in range(len(mars_str)):
            if mars_str[j] == ':':
                mars_str = mars_str[:j]
                break
        ise_str = ise_log[i]
        for j in range(len(ise_str)):
            if ise_str[j] == ':':
                ise_str = ise_str[:j]
                break

        if ise_str != mars_str:  # need to change pos of ise_log[i]
            str = ise_log[i]
            ise_log[i] = ise_log[i + 1]
            ise_log[i + 1] = str


def cmp(i):
    fail = 1
    if ise_log[i] == mars_log[i]:
        fail = 0
    if mars_log[i][11] == '*' and i > 0 and ise_log[i] == mars_log[i-1]:
        fail = 0
    if ise_log[i][11] == '*' and i < length - 1 and ise_log[i] == mars_log[i+1]:
        fail = 0
    return fail

arrange(length)

with open("compare.txt", "w") as file:
    flag = 0
    for i in range(length - 1):
        fail=cmp(i)
        if fail:
            fail_msg="We expect %s, but we got %s" % (mars_log[i], ise_log[i])
            print(fail_msg)
            file.write(fail_msg)
            flag = 1

    if flag == 0:
        success_msg="valid logNum:%d\nwe find no bug in this epoch!" % length
        print(success_msg)
        file.write(success_msg)

