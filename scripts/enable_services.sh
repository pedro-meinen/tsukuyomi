#!/usr/bin/env bash

source ./utils.sh
source ../config/services.conf

check_command systemctl
check_command rg

for service in "${SERVICES[@]}"; do
  if systemctl list-unit-files | rg -q "^$service"; then
    sudo systemctl enable "$service"
    sudo systemctl start "$service"
  else
    echo "Servico $service nao encontrado, ignorando..."
  fi
done
