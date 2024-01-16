#!/bin/bash
apt-get install --no-install-recommends -y zstd xz-utils binutils
mkdir -p /tmp/colcon_fix/
cd /tmp/colcon_fix
apt-get download python3-colcon-notification
# Extract files from the archive
ar x python3-colcon-notification*
rm python3-colcon-notification*
# Uncompress zstd files an re-compress them using xz
zstd -d < control.tar.zst | xz > control.tar.xz
zstd -d < data.tar.zst | xz > data.tar.xz
# Re-create the Debian package in /tmp/
ar -m -c -a sdsd python3-colcon-notification_new.deb debian-binary control.tar.xz data.tar.xz
# Clean up (optional)
rm debian-binary control.tar.xz data.tar.xz control.tar.zst data.tar.zst
# install
apt-get install --no-install-recommends -y ./python3-colcon-notification_new.deb