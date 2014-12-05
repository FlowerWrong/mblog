#!/bin/bash

echo 'Input a number between 1 to 4'
echo 'Your number is:\c'
read aNum
case $aNum in
  1) echo 'You select 1'
  ;;
  2) echo 'You select 2'
  ;;
  3) echo 'You select 3'
  ;;
  4) echo 'You select 4'
  ;;
  *) echo 'You do not select a number between 1 to 4'
  ;;
esac
