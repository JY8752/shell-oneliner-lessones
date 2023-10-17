#!/bin/sh

dir=$(dirname "$0")
cd "$dir" || exit

cat ../shellgei160/qdata/7/kakeibo.txt |
  awk '{tax=($1<"20191001"||$2~"^*") ? 1.08 : 1.1; print $0, tax}' | # tax行を追加 20191001以前または*の商品は8%
  awk '{print int($3*$4)}' |
  awk '{total+=$1}END{print total}'

# cat ../shellgei160/qdata/7/kakeibo.txt | awk '{tax=($1<"20191001"||$2~"^*") ? 1.08 : 1.1; print $0,tax}' | awk '{print int($3*$4)}' | awk '{total+=$1}END{print total}'
