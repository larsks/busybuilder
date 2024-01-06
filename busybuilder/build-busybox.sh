#!/bin/sh

set -e

cd /build
git clone --depth=1 git://busybox.net/busybox.git
cd busybox
cp /build/busybox-config .config
make oldconfig
make $MAKEFLAGS
mkdir -p /output
cp busybox /output
