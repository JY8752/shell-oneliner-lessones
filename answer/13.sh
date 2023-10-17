#!/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

file='file'
if [ ! -e "$file" ]; then
  touch "$file"
fi

cat "$file"
