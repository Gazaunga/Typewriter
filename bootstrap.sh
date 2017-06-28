#!/bin/bash

sudo sh -c "echo uvesafb >> /etc/initramfs-tools/modules"
sudo modprobe uvesafb
sudo sh -c "echo options uvesafb mode_option=1920×1080-24 scroll=ywrap > /etc/modprobe.d/uvesafb.conf"
sudo update-initramfs -k all -u

# ==> To run fbterm as a non-root user, do:
sudo gpasswd -a gazbit video
# ==> To enable keyboard shortcuts for non-root users, do:
#sudo setcap 'cap_sys_tty_config+ep' /usr/bin/fbterm
#or
sudo chmod u+s /usr/bin/fbterm

