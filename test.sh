#!/bin/bash
actual=`cat actual.txt`
echo $actual
new=`echo $actual+0.1 | bc`
ok="0.5"
echo $ok
#xgamma -gamma $new
if (( $(bc <<<"$ok >= $actual") ))
then
    echo xgamma -gamma $new
else
    echo no
fi
actual=$new
echo $actual
echo "$new" > actual.txt
