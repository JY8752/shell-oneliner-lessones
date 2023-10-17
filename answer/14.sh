#!/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

counter=1
while [ "$counter" -le 100 ]; do
  echo '羊が'"$counter"'匹'
  ((counter++))
  sleep 1
done
