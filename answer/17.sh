#!/usr/local/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

targetDir='./tmp/16'
if [ ! -e "$targetDir" ]; then
  mkdir -p "$targetDir"
fi

while read -r ln; do echo "$ln"; done </etc/passwd >"$targetDir"'/a'
