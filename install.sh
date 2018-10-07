#!/bin/sh
# Installation of my Fedora rice
# By Jyry Hjelt 7/10/2018

# Install all the packages
sudo dnf update
sudo dnf install vim vim-enhanced vim-X11 texlive texlive-biblatex texlive-

# Vim setup
cp ./.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

