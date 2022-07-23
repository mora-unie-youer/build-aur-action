#!/bin/bash

git clone "https://aur.archlinux.org/$1.git"
cd "$1"
echo 'PACKAGER="Mora Unie Youer <mora_unie_youer@riseup.net>"' >> /etc/makepkg.conf
updpkgsums
makepkg -sf --noconfirm --skippgpcheck
