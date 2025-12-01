#!/usr/bin/env bash

sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

export SHELL=/usr/bin/zsh

TSUKUYOMI_DIR="$HOME/tsukoyomi"
TSUKUYOMI_SCRIPTS="$TSUKUYOMI_DIR/scripts"
TSUKUYOMI_CONFIGS="$TSUKUYOMI_DIR/config"
TSUKUYOMI_LIB="$TSUKUYOMI_DIR/lib"

source "$TSUKUYOMI_LIB/log.sh"
source "$TSUKUYOMI_LIB/panic.sh"
source "$TSUKUYOMI_LIB/check_command.sh"
source "$TSUKUYOMI_LIB/banner.sh"

source "$TSUKUYOMI_CONFIGS/packages.conf"
source "$TSUKUYOMI_CONFIGS/services.conf"
source "$TSUKUYOMI_CONFIGS/python_versions.conf"
source "$TSUKUYOMI_CONFIGS/uv_tools.conf"
source "$TSUKUYOMI_CONFIGS/bun_packages.conf"

source "$TSUKUYOMI_SCRIPTS/install_yay.sh"
source "$TSUKUYOMI_SCRIPTS/install_packages.sh"
source "$TSUKUYOMI_SCRIPTS/enable_services.sh"
source "$TSUKUYOMI_SCRIPTS/setup_docker.sh"
source "$TSUKUYOMI_SCRIPTS/clone_dotfiles.sh"
source "$TSUKUYOMI_SCRIPTS/setup_python.sh"
source "$TSUKUYOMI_SCRIPTS/setup_bun.sh"
source "$TSUKUYOMI_SCRIPTS/setup_rust.sh"
source "$TSUKUYOMI_SCRIPTS/grub_theme.sh"
source "$TSUKUYOMI_SCRIPTS/sddm_theme.sh"
source "$TSUKUYOMI_SCRIPTS/cleanup.sh"

print_banner
echo "Iniciando instalacao..."

# Instalacao do yay
install_yay

# Intalacao dos pacotes
install_packages

# Abilitando Servicos
enable_services

# Configurando Docker
setup_docker

# Clonando Arquivos de configuracao
clone_dotfiles

# Configurando Python
setup_python

# Configurando o Bun.js
setup_bun

# Configurando o rust
setup_rust

# Configurando tema do GRUB
grub_theme

# Configurando tema do SDDM
sddm_theme

# Limpando artefatos
cleanup

echo "Instalacao completa!"
