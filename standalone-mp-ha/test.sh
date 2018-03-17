#!/bin/bash 
for i in `seq 1 20`; 
  do sleep .5; 
  curl -w "\n" localhost:80/lb-test-app/getip; 
  curl -w "\n" localhost:81/lb-test-app/getip; 
done
