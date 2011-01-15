#!/bin/bash
for i in `ls *.graffle` 
  do 
    BASE=`basename $i .graffle`
    ./graffle.sh $i ${BASE}-print.pdf
    ./graffle.sh $i ${BASE}-screen.png
  done

