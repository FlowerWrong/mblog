#!/bin/bash

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"


NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Method: ${NAME[*]}"
echo "Second Method: ${NAME[@]}"

# 取得数组元素的个数
length=${#NAME[@]}
echo "${length}"
# 或者
length=${#NAME[*]}
echo "${length}"
# 取得数组单个元素的长度
lengthn=${#NAME[0]}
echo "${length}"
