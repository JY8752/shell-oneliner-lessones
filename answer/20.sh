#!/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

for a in $(cd /usr || exit && echo *); do echo "$a"; done
