#!/bin/bash 
for i in `seq 1 20`; do sleep .5; curl -w "\n" localhost/lb-test-app/getip; done
