#!/usr/bin/env bash

source "$TSUKUYOMI_CONFIGS/bun_packages.conf"
source "$TSUKUYOMI_SCRIPTS/utils.sh"

check_command curl
check_command unzip

if command -v bun >/dev/null 2>&1; then
  echo "[INFO] Bun ja esta instalado, ignorando"
else
  echo "[INFO] Iniciando instalacao do bunjs"
  curl -fsSL https://bun.sh/install | bash
fi

for pkg in "${BUN_PACKAGES[@]}"; do
  echo "[INFO] Instalando pacote $pkg"
  bun i -g "$pkg"
done

echo "[INFO] Instalacao realizada com sucesso!"
