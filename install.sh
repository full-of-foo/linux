#! /bin/bash
#===================================================================================
#
# FILE: install.sh
#
# USAGE: chmod +x ./install.sh && ./install.sh
#
# DESCRIPTION: Installs our bootstraped patched 2.6.32 kernel (see ./bootstrap.sh)

#===================================================================================

cd /usr/src/linux-2.6.32-custom && \
  sudo rm -f ./config && \
  sudo cp /boot/config-`uname -r` ./.config && \
  yes "" | sudo make ARCH=x86 oldconfig && \
  sudo make ARCH=x86 -j8

# sudo cp -v /usr/src/linux-2.6.32-custom/arch/x86/boot/bzImage /boot/vmlinuz-2.6.32-custom
# sudo cp -v /usr/src/linux-2.6.32-custom/System.map /boot/System.map-2.6.32-custom
# sudo cp -v /usr/src/linux-2.6.32-custom/.config /boot/config-2.6.32-custom
# sudo update-grub
# sudo sed -i.bak 's/GRUB_DEFAULT=0/GRUB_DEFAULT=2/' /etc/default/grub
# sudo update-initramfs -u -k 2.6.32-custom
# sudo update-grub
# sudo reboot
