#!/usr/bin/env bash

source ./config/packages.conf

if ! command -v yay >/dev/null 2>&1; then
  echo "comando yay nao foi encontrado. Instale o programa e tente novamente"
  exit 1
fi

yay -S --needed --noconfirm --answerdiff=None --answeredit=None "${PACKAGES[@]}"
