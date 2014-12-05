#!/bin/bash

a=10
b=20
if [ $a == $b ]
  then
  echo "a is equal to b"
fi
if [ $a != $b ]
  then
  echo "a is not equal to b"
fi

a=10
b=20
if [ $a == $b ]
  then
  echo "a is equal to b"
else
  echo "a is not equal to b"
fi

a=10
b=20
if [ $a == $b ]
  then
  echo "a is equal to b"
elif [ $a -gt $b ]
  then
  echo "a is greater than b"
elif [ $a -lt $b ]
  then
  echo "a is less than b"
else
  echo "None of the condition met"
fi

if test $[2*3] -eq $[1+5]; then echo 'The two numbers are equal!'; fi;

num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
  then
  echo 'The two numbers are equal!'
else
  echo 'The two numbers are not equal!'
fi
