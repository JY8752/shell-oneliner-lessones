#!/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

echo {www,}.{test,yamanaka,junichi,jy,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii}.{com,dev,jp,org,tech} |
  tr ' ' '\n' |
  sort -R | # random
  head -n 100 |
  sed 's/^\.//'
