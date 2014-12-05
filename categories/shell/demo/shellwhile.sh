#!/bin/bash

echo 'type <CTRL-D> to terminate'
echo -n 'enter your most liked film: '
while read FILM
do
  echo "Yeah! great film the $FILM"
done
