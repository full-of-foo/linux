#! /bin/bash
#===================================================================================
#
# FILE: bootstrap.sh
#
# USAGE: chmod +x ./bootstrap.sh && ./bootstrap.sh
#
# DESCRIPTION: Fetches our latest patched 2.6.32 kernel source from GH as a tarball,
#              un-tars and -compresses the source. Then moves it to ~/linux

#===================================================================================

wget https://api.github.com/repos/full-of-foo/linux/tarball/master \
     -O linux-2.6.32.tar.gz && \
  sudo rm -fr /usr/src/linux-* && \
  sudo mkdir /usr/src/linux-2.6.32 && \
  sudo mv ./linux-2.6.32.tar.gz /usr/src/linux-2.6.32 && \
  cd /usr/src && \
  tar -xzvf linux-2.6.32.tar.gz -C linux-2.6.32 --strip-components 1
