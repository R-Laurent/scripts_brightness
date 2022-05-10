#!/bin/bash
actual=`cat /home/raph/.scripts_brightness/actual_brightness.txt`
echo $actual
new=`echo $actual-0.1 | bc`
xgamma -gamma $new
echo "$new" > /home/raph/.scripts_brightness/actual_brightness.txt
