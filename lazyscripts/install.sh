#!/bin/bash

# Open terminal and enter "bash install.sh" to use this script.

# Update and upgrade system
sudo apt update
sudo apt upgrade

# Basic
sudo apt install -y git g++ vim
sudo apt install -y openssh-server
sudo apt install -y ibus-chewing
#sudo apt install -y ibus-pinyin
#sudo apt install -y ibus-anthy

# Python
#sudo apt install -y virtualenv
#sudo apt install -y python-dev
#sudo apt install -y python-tk

# R
#sudo apt install r-base-core

# 16.04 32-bit libraries
#dpkg --add-architecture i386
#apt install -y libc6:i386
#apt install -y libstdc++6:i386

# AppCenter
#   -> Disks
#   -> System Monitor
#   -> Eye of MATE Image Viewer

# Create local bin file
mkdir /home/$USER/bin

# Create .application
#mkdir /home/$USER/.application

# Hide vim.desktop
#sudo mv /usr/share/applications/vim.desktop /home/$USER/.application/vim.desktop
#sudo mv /usr/share/applications/R.desktop /home/$USER/.application/R.desktop

# Terminal and Vim settings
cp data/home/user/bashrc /home/$USER/.bashrc
cp data/home/user/vimrc /home/$USER/.vimrc

# English calendar
sudo cp data/etc/environment /etc/environment

# Create R.desktop and vim.desktop
sudo cp data/usr/share/applications/R.desktop /usr/share/applications/R.desktop
sudo cp data/usr/share/applications/vim.desktop /usr/share/applications/vim.desktop

# Using ibus in scratch.desktop
sudo cp data/usr/share/applications/org.pantheon.scratch.desktop /usr/share/applications/org.pantheon.scratch.desktop

# Using ibus in epiphany.desktop
sudo cp data/usr/share/applications/epiphany.desktop /usr/share/applications/epiphany.desktop

# Open ibus when system startup
sudo cp data/usr/share/im-config/data/21_ibus.rc /usr/share/im-config/data/21_ibus.rc
im-config
ibus-setup

echo "Restart to finish installing updates"
