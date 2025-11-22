setup_rust() {
  check_command rustup

  log_info "Iniciando instalacao das ferramentas do Rust"

  rustup default stable
  rustup component add clippy
  rustup component add rustfmt

  log_info "Instalacao realizada com sucesso!"
}
