#!/usr/bin/env bash

echo "[INFO] Inciando configuracao do Docker"

if ! getent group docker > /dev/null; then
  echo "[INFO] criando grudo do Docker"
  sudo groupadd docker
fi

echo "[INFO] Adicionando $USER ao grupo do Docker"
sudo usermod -aG docker "$USER"

echop "[INFO] Configuracao realizada com sucesso!"
