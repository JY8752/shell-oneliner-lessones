#!/usr/local/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

echo 'i am a perfect human' | (
  read -r a
  echo "${a^^}"
)

echo 'pen-pineapple-apple-pen' | (
  IFS='-'
  read -r -a w
  echo "${w[*]^}"
)
