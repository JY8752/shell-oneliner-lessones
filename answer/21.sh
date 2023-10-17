#!/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

find ../shellgei160/qdata/21 | grep -v "\.\./shellgei160/qdata/21/dir_b/d" | sort
