#!/usr/bin/env bash

source "$TSUKUYOMI_CONFIGS/packages.conf"
source "$TSUKUYOMI_SCRIPTS/utils.sh"

check_command "yay"

echo "[INFO] Iniciando instalacao dos pacotes"
yay -S --needed --noconfirm --answerdiff=None --answeredit=None "${PACKAGES[@]}"
echo "[INFO] Instalacao realizada com sucesso!"
