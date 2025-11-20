#!/usr/bin/env bash

source "$TSUKUYOMI_SCRIPTS/utils.sh"

check_command git

echo "[INFO] Clonando repositorio de configuracoes"
git clone https://github.com/pedro-meinen/dotfiles ~/dotfiles
echo "[INFO] Repositorio Clonado com sucesso!"
