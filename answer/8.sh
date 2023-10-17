#!/bin/sh

dir=$(dirname "$0")
cd "$dir" || exit

cat ../shellgei160/qdata/8/access.log |
  awk -F : '{print $(NF - 2)}' |
  awk '$1<"12"{print "午前"}$1>="12"{print "午後"}' |
  sort |
  uniq -c
