#!/usr/bin/env bash

source ./utils.sh

check_command stow

cd ~/dotfiles || panic "Nao foi possivel achar o diretorio de dotfiles"

for dir in */; do
  stow "$dir"
done
