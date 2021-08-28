#!/bin/bash
#After OS-install script to install packages

apt update -y
upgrade -y

apt_packages=(vim unzip gimp bind9-utils awscli terminator chromium-browser curl tree net-tools dia simplescreenrecorder imagemagick vlc mysql-client nmap htop git swaks tcpdump virtualbox vagrant mesa-utils flameshot)

snap_packages=(code kontena-lens postman teams slack kubectl)

for i in ${apt_packages[@]}; do
    apt install $i -y
done

apt autoremove -y

for j in ${snap_packages[@]}; do
    snap install $j --classic
done

