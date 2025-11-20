#!/usr/bin/env bash

if ! getent group docker > /dev/null; then
  sudo groupadd docker
fi

sudo usermod -aG docker "$USER"
