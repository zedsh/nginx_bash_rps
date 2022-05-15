#!/bin/bash
old=0
while [ 1 = 1 ]
  do
        new=$(curl -s http://localhost/status | grep '^ ' | cut -d ' ' -f 4|tr -d $'\n');
        echo `date` "RPS" $((new - old)); 
        old=$new;
        sleep 1;
  done


