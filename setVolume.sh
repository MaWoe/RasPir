#!/bin/bash

. $(dirname $0)/tools.sh

usage () {
  echo
  echo "Usage: $0 <VOLUME>"
  echo
  exit 1
}

if [ -z $1 ]; then
  usage;
fi

VOLUME=$(($1*2))

sendStart $RECEIVER KEY_VOLUMEDOWN
sleep 4
sendStop $RECEIVER KEY_VOLUMEDOWN

while [ $(($VOLUME)) -gt 0 ]; do
  sendOnce $RECEIVER KEY_VOLUMEUP
  sleep 0.1
  VOLUME=$(($VOLUME-1))
done
