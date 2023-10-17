#!/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit

main() {
  if [ "$#" -ne 0 ]; then
    echo $(($1 * 2))
    exit 0
  fi

  read -rs input
  echo $((input * 2))
}

main "$@"
