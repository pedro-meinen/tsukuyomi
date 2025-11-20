#!/usr/bin/env bash

source "$TSUKUYOMI_CONFIGS/python_versions.conf"
source "$TSUKUYOMI_CONFIGS/uv_tools.conf"
source "$TSUKUYOMI_SCRIPTS/utils.sh"

check_command zsh
check_command uv

export SHELL=/usr/bin/zsh

echo "[INFO] Iniciando configuracao do Python"

echo "[INFO] Instalando versoes do Python"
uv python install "${PYTHON_VERSIONS[@]}"
uv python update-shell

for tool in "${UV_TOOLS[@]}"; do
  echo "[INFO] Instalando ferramenta $tool"
  uv tool install "$tool"
done

uv tool update-shell

echo "[INFO] Configuracao realizada com sucesso!"
