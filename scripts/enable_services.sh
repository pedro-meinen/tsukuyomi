#!/usr/bin/env bash

source "$TSUKUYOMI_SCRIPTS/utils.sh"
source "$TSUKUYOMI_CONFIGS/services.conf"

check_command systemctl
check_command rg

echo "[INFO] Iniciando setup dos Servicos"
for service in "${SERVICES[@]}"; do
  if systemctl list-unit-files | rg -q "^$service"; then
    echo "[INFO] Ativando servico $service"
    sudo systemctl enable "$service"

    echo "[INFO] Iniciando Servico $service"
    sudo systemctl start "$service"
  else
    echo "[INFO] Servico $service nao encontrado, ignorando..."
  fi
done
echo "[INFO] Setup finalizado com sucesso!"
