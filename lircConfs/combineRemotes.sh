#!/bin/bash

COMBINED="combined.conf"
echo "Combining all in $COMBINED ..."
echo > $COMBINED
for file in "$@"; do
  echo "FILE: $file"
  cat $file >> $COMBINED
done
