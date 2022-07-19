#!/bin/bash -e

. "${BASE_DIR}/config"

install -m 644 files/config.txt "${ROOTFS_DIR}/boot/"
install -m 644 files/cmdline.txt "${ROOTFS_DIR}/boot/"


HOME="${ROOTFS_DIR}/home/${FIRST_USER_NAME}"
install -m 755 -o 1000 -g 1000 files/husam.txt "${HOME}/"
