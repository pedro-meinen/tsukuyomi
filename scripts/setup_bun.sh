#!/usr/bin/env bash

source ../config/bun_packages.conf
source ./utils.sh

check_command curl
check_command unzip

curl -fsSL https://bun.sh/install | bash

for pkg in "${BUN_PACKAGES[@]}"; do
  bun i -g "$pkg"
done
