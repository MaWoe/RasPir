#!/bin/bash

. $(dirname $0)"/tools.sh"

sendOnce $RECEIVER KEY_BLUETOOTH
sleep 2
sendOnce $RECEIVER KEY_AMP_POWER
