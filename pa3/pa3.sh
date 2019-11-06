#!/bin/bash
# cmps101-pt.f19 grading
# usage: pa3.sh
# (run within your pa3 directory to test your code)

SRCDIR=https://raw.githubusercontent.com/KohdMonkey/cmps101-pt-f19-grading/master/pa3

EXE_ALL=( pa3-func-check.sh pa3-lunit-check.sh pa3-bunit-check.sh pa3-make-check.sh )
EXE_RANGE=$((${#EXE_ALL[*]} - 1))
echo $EXE_RANGE
for i in $(seq 0 $EXE_RANGE); do
  curl $SRCDIR/${EXE_ALL[i]} > ${EXE_ALL[i]}
  chmod +x ${EXE_ALL[i]}
  ./${EXE_ALL[i]}
  rm -f ${EXE_ALL[i]}
done
