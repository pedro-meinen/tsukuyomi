#!/usr/bin/env bash

source ./scripts/utils.sh

print_banner
echo "Iniciando instalacao..."

source ./scripts/install_yay.sh
source ./scripts/install_packages.sh
source ./scripts/clone_dotfiles.sh
source ./scripts/link_configs.sh
source ./scripts/setup_python.sh
source ./scripts/setup_bun.sh

echo "Instalacao completa!"
