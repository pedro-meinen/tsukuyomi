#!/usr/bin/env bash

source ../config/python_versions.conf
source ../config/uv_tools.conf
source ./utils.sh

check_command zsh
check_command uv

export SHELL=/usr/bin/zsh

uv python install "${PYTHON_VERSIONS[@]}"
uv python update-shell

for tool in "${UV_TOOLS[@]}"; do
  uv tool install "$tool"
done

uv tool update-shell
