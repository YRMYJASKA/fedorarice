#!/bin/sh
# Installation of my Fedora rice
# By Jyry Hjelt 7/10/2018

# Install all the packages
sudo dnf update

sudo rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-28.noarch.rpm
sudo rpm -Uvh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-28.noarch.rpm

sudo dnf install vim vim-enhanced vim-X11 texlive texlive-biblatex i3 i3-ipc i3status feh mpv htop pavucontrol texlive-mla-paper texlive-texcount dmenu biber snapd youtube-dl python3-power python3 python3-devel gcc make automake cmake irssi ncurses-devel latexmk mupdf gcc-c++ fontawesome-fonts powerline-fonts python3-netifaces python3-psutil python python2-psutil zsh util-linux-user curl libcurl-devel swig stfl-devel rust cargo json-devel json-c-devel asciidoc i3lock xcb-util-xrm libxcb-devel xcb-util-keysyms-devel xcb-util-devel xcb-util-wm-devel xcb-util-xrm-devel yajl-devel libXrandr-devel startup-notification-devel libev-devel xcb-util-cursor-devel libXinerama-devel libxkbcommon-devel libxkbcommon-x11-devel pcre-devel pango-devel git kernel-devel python-devel 

# Vim setup
cp ./.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# YCM needs to be installed separately

# i3 setup
cp ./config_i3 ~/.config/i3/config

# i3-gaps install
mkdir ~/.i3 
git clone https://www.github.com/Airblader/i3 ~/.i3/i3-gaps
cd ~/.i3/i3-gaps
autoreconf --force --install
mkdir build
cd - # Bounce back
cd ~/.i3/i3-gaps/build
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
cd - # Bounce back
# bumblebee-status install 
git clone git://github.com/tobi-wan-kenobi/bumblebee-status ~/.i3
# Copy wallpaper
cp ./wallpaper.png ~/.i3/wallpaper.png

# Copy newsboat settings and rss feeds
cp -r ./.newsboat ~/.newsboat 

# Copy templates
cp -r ./Templates ~/Templates 

# Discord
sudo snap install discord

# ZSH setup
cp ./.zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Rice installation done!"
echo "Following programs need to be installed separetly:"
echo "- YCM for vim"
echo "- newsboat"
