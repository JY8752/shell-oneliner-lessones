#!/bin/sh

dir=$(dirname "$0")
cd "$dir" || exit

cat ../shellgei160/qdata/10/headings.md |
  sed -r 's/^# +(.*)/\1\n===/' |
  sed -r 's/^## +(.*)/\1\n---/'
