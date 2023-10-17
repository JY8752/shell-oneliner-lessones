#!/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

path='../shellgei160/qdata/19/cardno'

a=$(<"$path")
echo 'xxxx-xxxx-'"${a:10}"
