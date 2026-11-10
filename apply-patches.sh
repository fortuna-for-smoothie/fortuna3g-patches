#!/bin/bash

set -e

MB=$1

USE_PATCH=0
if [ "$MB" != "--mb" ]; then
    USE_PATCH=1
fi

OLD_WD=`pwd`
cd fortuna3g-patches

if [ "$USE_PATCH" == "1" ]; then
    for patch in `find . -name *.patch |sort`; do
        cd $OLD_WD/$(dirname $patch)
        patch -p1 < $OLD_WD/fortuna3g-patches/$patch
    done
else
    MBS=$(find . -name *.patch -exec dirname {} \; |sort -u)
    for mb in $MBS; do
        cd $OLD_WD/$mb
        echo Patching $(pwd)
        git am $OLD_WD/fortuna3g-patches/$mb/*.patch
    done
fi
