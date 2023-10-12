#!/bin/sh

dir=$(dirname "$0")
cd "$dir" || exit
file="../shellgei160/qdata/1/files.txt"

grep '\.exe$' <"$file"
