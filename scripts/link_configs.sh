#!/usr/bin/env bash

source "$TSUKUYOMI_SCRIPTS/utils.sh"

check_command stow

echo "[INFO] Inciando link das configuracoes"
cd ~/dotfiles || panic "Nao foi possivel achar o diretorio de dotfiles"

for dir in */; do
  echo "[INFO] Linkando configuracoes de $dir"
  stow "$dir"
done

echo "[INFO] Configuracoes linkadas com sucesso!"

cd - || panic "Nao foi possivel retornar ao diretorio anterior"
