setup_bun() {
  check_command curl
  check_command unzip

  if command -v bun >/dev/null 2>&1; then
    log_info "Bun ja esta instalado, ignorando"
  else
    log_info "Iniciando instalacao do bunjs"
    curl -fsSL https://bun.sh/install | bash
  fi

  for pkg in "${BUN_PACKAGES[@]}"; do
    log_info "Instalando pacote $pkg"
    bun i -g "$pkg"
  done

  log_info "Instalacao realizada com sucesso!"
}
