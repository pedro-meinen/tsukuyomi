#!/usr/bin/env bash

source ./utils.sh

check_command rustup

rustup default stable
rustup component add clippy
rustup component add rustfmt
