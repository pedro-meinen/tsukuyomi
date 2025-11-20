#!/usr/bin/env bash

source "$TSUKUYOMI_SCRIPTS/utils.sh"

check_command pacman
check_command git

echo "[INFO] Iniciando instalacao do yay"

echo "[INFO] Instalando base-devel"
sudo pacman -S --needed base-devel

if [ -d "$HOME/yay" ]; then
  echo "[INFO] Repositorio yay ja exite."
else
  echo "[INFO] Clonando repositorio do yay "
  git clone https://aur.archlinux.org/yay.git ~/yay

  cd ~/yay || panic "Nao foi possivel encontrar o diretorio 'yay'"

  echo "[INFO] Compilando yay"
  makepkg -si --noconfirm

  echo "[INFO] Instalacao finalizada com sucesso!"

  cd - || panic "Nao foi possivel retornar ao repositorio anterior"
fi
