#!/usr/bin/env bash

source ./utils.sh

check_command pacman
check_command git

sudo pacman -S --needed base-devel

git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay || panic "Nao foi possivel encontrar o diretorio 'yay'"
makepkg -si
