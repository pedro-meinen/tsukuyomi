#!/usr/bin/env bash

sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

export TSUKUYOMI_DIR="$HOME/tsukoyomi"
export TSUKUYOMI_SCRIPTS="$TSUKUYOMI_DIR/scripts"
export TSUKUYOMI_CONFIGS="$TSUKUYOMI_DIR/config"

source "$TSUKUYOMI_SCRIPTS/utils.sh"

print_banner
echo "Iniciando instalacao..."

source "$TSUKUYOMI_SCRIPTS/install_yay.sh"
source "$TSUKUYOMI_SCRIPTS/install_packages.sh"
source "$TSUKUYOMI_SCRIPTS/enable_services.sh"
source "$TSUKUYOMI_SCRIPTS/setup_docker.sh"
source "$TSUKUYOMI_SCRIPTS/clone_dotfiles.sh"
source "$TSUKUYOMI_SCRIPTS/link_configs.sh"
source "$TSUKUYOMI_SCRIPTS/setup_python.sh"
source "$TSUKUYOMI_SCRIPTS/setup_bun.sh"
source "$TSUKUYOMI_SCRIPTS/setup_rust.sh"

echo "Instalacao completa!"
