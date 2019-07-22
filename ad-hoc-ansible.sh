#!/bin/sh

cat names | while read line
do
  ansible local -i hosts  -a "/bin/echo $line" -u sheinen
done
