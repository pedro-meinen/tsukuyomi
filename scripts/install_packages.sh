#!/usr/bin/env bash

source ../config/packages.conf
source ./utils.sh

check_command "yay"

yay -S --needed --noconfirm --answerdiff=None --answeredit=None "${PACKAGES[@]}"
