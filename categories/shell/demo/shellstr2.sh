#!/bin/bash

str='this is a string'

your_name='qinjx'
str="Hello, I know your are \"$your_name\"! \n"

your_name="qinjx"
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting $greeting_1

string="abcd"
echo ${#string} #输出 4

string="alibaba is a great company"
echo ${string:1:4} #输出liba

string="alibaba is a great company"
echo `expr index "$string" is`
