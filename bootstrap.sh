#!/bin/bash
# add check for pacaur exists or exit

source ~/Typewriter/.local/bin/.scripts/utils.sh

sudo sh -c "echo uvesafb >> /etc/initramfs-tools/modules"
sudo modprobe uvesafb
sudo sh -c "echo options uvesafb mode_option=1920×1080-24 scroll=ywrap > /etc/modprobe.d/uvesafb.conf"
sudo update-initramfs -k all -u



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
  interrobang-git \
  ranger \
  mc \
  htop \
  glances \
  fbterm-git \
  tmux \
  fbv \
  grub-customizer \
  ttf-inconsolata-git v86d \
  rainbowstream \
  fontconfig \
  libjpeg \
  #libungif \
  #libtiff \
  pandoc \
  texlive-most \
  trash-cli \
  howdoi \
  rmlint \
  newsbeuter \
  telegram-cli-git \
  cylon \
  task \
  zathura \
  ttf-google-fonts-git \
  horst \
  httping \
  alot-git \
  rtv \
  neomutt-git \
  adobe-source-code-pro-fonts \
  adobe-source-sans-pro-fonts \
  rainbow \
  source-highlight \
  polkit \
  lesspipe \
  colormake-git \
  prettyping 

curl -sLf https://spacevim.org/install.sh | bash
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
  
  # ==> To run fbterm as a non-root user, do:
sudo gpasswd -a gazbit video
# ==> To enable keyboard shortcuts for non-root users, do:
#sudo setcap 'cap_sys_tty_config+ep' /usr/bin/fbterm
#or
sudo chmod u+s /usr/bin/fbterm
# rubystrap

#!/bin/bash
source ~/.local/bin/.scripts/utils.sh
e_success "Let's grab Ruby and ruby-docs"
cd ~
git clone git://github.com/sstephenson/rbenv.git .rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /etc/profile.d/rbenv.sh
echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
source /etc/profile
rbenv install 2.4.1
rbenv rehash
rbenv global 2.4.1
gem install bundler
gem install jekyll
gem install rake
gem install rails
gem install sinatra
gem install thin
gem install asciidoctor
gem install rpg-maker-rgss3
gem install gepub
gem install sass
gem install pry
gem install ruco
gem update
git config --global user.name "Gazaunga"
git config --global user.email "jeremy.ottley@gmail.com"
git config --global core.autocrlf input
git config --global core.safecrlf true
sudo gem install --no-user-instal rails rake jekyll bundler
bundle install --path vendor/bundle 





