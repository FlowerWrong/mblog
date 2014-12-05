#!/bin/bash

for loop in 1 2 3 4 5
do
  echo "The value is: $loop"
done

for FILE in $HOME/.bash*
do
  echo $FILE
done
