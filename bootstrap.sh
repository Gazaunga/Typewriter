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

# cli script for pacaur + all cli apps
pacaur -S --noconfirm --noedit diakonos \
  screen \
  neovim \
  python2-neovim \
  python-neovim \
  ruby-neovim \
  ffmpeg \
  mplayer \
  dzen2 \
  interrobang \
  ranger \
  mc \
  htop \
  glances \
  fbterm \
  tmux \
  fbv \
  grub-customizer \
  fonts-inconsolata v86d \
  rainbowstream \
  fontconfig \
  libjpeg \
  libungif \
  libtiff \
  pandoc \
  texlive-most \
  trash-cli \
  howdoi \
  rmlint \
  newsbeuter \

curl -sLf https://spacevim.org/install.sh | bash
  
  
# gems



