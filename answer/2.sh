#!/bin/sh

dir=$(dirname "$0")
cd "$dir" || exit

target='../shellgei160/qdata/2/img/'

find "$target"*.jpg |
  sed 's/\.png$//' |
  xargs -I@ convert @.png @.jpg
