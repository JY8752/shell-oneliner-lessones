#!/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

declare -A x                                         # 連想配列作る
IFS=':'                                              # 区切り文字変える
while read -r {a..g}; do x[$g]+=.; done </etc/passwd # シェル名をkeyに.でカウントする
for s in "${!x[@]}"; do echo "$s" ${#x["$s"]}; done
unset x
