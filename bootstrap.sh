#! /bin/bash
#===================================================================================
#
# FILE: bootstrap.sh
#
# USAGE: chmod +x ./bootstrap.sh && ./bootstrap.sh
#
# DESCRIPTION: Fetches our latest patched 2.6.18 kernel source from GH as a tarball

#===================================================================================

wget https://api.github.com/repos/full-of-foo/linux/tarball/master \
     -O linux-2.6.18.tar.gz && \
  rm -fr ~/linux && \
  mkdir ~/linux ~/linux/linux-2.6.18 && \
  mv ./linux-2.6.18.tar.gz ~/linux && \
  cd ~/linux && \
  tar -xzvf linux-2.6.18.tar.gz -C linux-2.6.18 --strip-components 1
