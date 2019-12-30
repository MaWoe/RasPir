#!/bin/bash

BASE=$(realpath $(dirname $0))
cd $BASE
echo "DOWN = . / UP = - "

while read -n 1 -r -s IN; do
  case "$IN" in 
    .)
      ./volumeDown.sh
      ;;
    -)
      ./volumeUp.sh
      ;;
  esac
done
