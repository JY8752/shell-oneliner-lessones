#!/bin/sh

dir=$(dirname "$0")
cd "$dir" || exit

seq 5 -1 1 | awk '{for(i=1;i<$1;i++){printf " "};print "x"}'
