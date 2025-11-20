#!/usr/bin/env bash

source "$TSUKUYOMI_SCRIPTS/utils.sh"

check_command rustup

echo "[INFO] Iniciando instalacao das ferramentas do Rust"

rustup default stable
rustup component add clippy
rustup component add rustfmt

echo "[INFO] Instalacao realizada com sucesso!"
