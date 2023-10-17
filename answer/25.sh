#!/bin/bash -e

set -o pipefail

trap 'rm .tmp.top10' EXIT

dir=$(dirname "$0")
cd "$dir" || exit

sort | head >.tmp.top10 || true

echo '+++++++ TOP 10 +++++++++'
cat .tmp.top10
