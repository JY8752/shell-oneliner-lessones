#!/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

trap 'echo execute trap' EXIT
