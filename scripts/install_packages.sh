#!/usr/bin/env bash

source ./config/packages.conf

for item in "${PACKAGES[@]}"; do
  echo "Package: $item"
done
