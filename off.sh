#!/bin/bash

cd $(dirname $0)

set -e

REMOTE="SONY_RM_U304"

. $(dirname $0)"/tools.sh"

sendOnce KEY_CD
sleep 1
sendOnce KEY_POWER_AMP
