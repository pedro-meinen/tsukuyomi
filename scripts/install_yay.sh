#!/usr/bin/env bash

if ! command -v pacman >/dev/null 2>&1; then
  echo "comando pacman, nao foi encontrado. Instale o programa e tente novamente"
  exit 1
fi

if ! command -v git >/dev/null 2>&1; then
  echo "comando git, nao foi encontrado. Instale o programa e tente novamente"
  exit 1
fi

sudo pacman -S --needed base-devel

git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
