#!/bin/sh

dir=$(dirname "$0")
cd "$dir" || exit

if [ -r ./tmp ]; then
  rm -rf ./tmp
fi

mkdir ./tmp
cd ./tmp || exit

# -Pは並行実行
seq 100 | xargs -P2 touch

# find . | wc -l

# -wオプションで0付きで表示
# それをawkで2列に並べてsedで置換
# 最後にxargsでbashに渡してmvを実行
seq -w 100 |
  awk '{print $1,$1}' |
  sed 's/^0*/mv /' |
  xargs -P2 -I@ bash -c @
