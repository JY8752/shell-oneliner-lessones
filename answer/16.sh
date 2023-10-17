#!/usr/local/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

n='abc'
(for i in {d..f}; do
  n+="$i"
  echo "$n"
done)
echo "$n"
