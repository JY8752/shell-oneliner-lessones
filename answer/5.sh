#!/bin/sh

dir=$(dirname "$0")
cd "$dir" || exit

cat ../shellgei160/qdata/5/ntp.conf | awk '$1=="pool"' | awk '{print $2}'
