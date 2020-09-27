#!/bin/sh

SCRIPTPATH="$(
  cd "$(dirname "$0")" >/dev/null 2>&1
  pwd -P
)"
TO_INSTALL="xmodmap,vim,fish,init"

IFS=","
for i in $TO_INSTALL; do
    sh $SCRIPTPATH/$i/install.sh "$SCRIPTPATH/$i/"
done

