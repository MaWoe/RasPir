#!/bin/bash

REMOTE="SONY_RM_U304"

. tools.sh

usage () {
  echo
  echo "Usage: $0 <VOLUME>"
  echo
  exit 1
}

if [ -z $1 ]; then
  usage;
fi

VOLUME=$1

sendStart KEY_VOLUMEDOWN
sleep 4
sendStop KEY_VOLUMEDOWN

while [ $VOLUME -gt 0 ]; do
  sendOnce KEY_VOLUMEUP
  sleep 0.1
  VOLUME=$(($VOLUME-1))
done
