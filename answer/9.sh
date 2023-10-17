#!/bin/sh

dir=$(dirname "$0")
cd "$dir" || exit

cat ../shellgei160/qdata/9/log_range.log |
  sed -n '/24\/Dec\/2016 ..:..:../,/25\/Dec\/2016 03:..:../p'
