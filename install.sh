#! /bin/bash
#===================================================================================
#
# FILE: install.sh
#
# USAGE: chmod +x ./install.sh && ./install.sh
#
# DESCRIPTION: Installs our bootstraped patched 2.6.32 kernel (see ./bootstrap.sh)

#===================================================================================

cd ~/linux/linux-2.6.32 && \
  rm -f ./config && \
  cp /boot/config-`uname -r` ./.config && \
  yes "" | make ARCH=x86 oldconfig && \
  make ARCH=x86
