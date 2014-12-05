#!/bin/bash
funWithParam(){
  echo "The value of the first parameter is $1 !"
  echo "The value of the second parameter is $2 !"
  echo "The value of the tenth parameter is $10 !"
  echo "The value of the tenth parameter is ${10} !"
  echo "The value of the eleventh parameter is ${11} !"
  echo "The amount of the parameters is $# !" # 参数个数
  echo "The string of the parameters is $* !" # 传递给函数的所有参数
}
funWithParam 1 2 3 4 5 6 7 8 9 34 73
