#!/bin/sh

dir=$(dirname "$0")
cd "$dir" || exit

if [ -r ./tmp ]; then
  rm -rf ./tmp
fi

mkdir ./tmp
cd ./tmp || exit

seq 100 | sed 's/^/echo $RANDOM > /' | bash

# -l マッチした内容が含まれるファイル名のみ出力
# -R 再帰的に
# ファイルの中身が10のファイルのみ削除する
grep -l '^10$' -R | xargs rm
