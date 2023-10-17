#!/bin/sh

dir=$(dirname "$0")
cd "$dir" || exit

cat ../shellgei160/qdata/11/gijiroku.txt |
  xargs -n2 |
  sed 's/^すず /鈴木: /;s/^さと /佐藤: /;s/^やま /山田: /'
