setup_python() {
  check_command zsh
  check_command uv

  log_info "Iniciando configuracao do Python"

  log_info "Instalando versoes do Python"
  uv python install "${PYTHON_VERSIONS[@]}"
  uv python update-shell

  for tool in "${UV_TOOLS[@]}"; do
    log_info "Instalando ferramenta $tool"
    uv tool install "$tool"
  done

  uv tool update-shell

  log_info "Configuracao realizada com sucesso!"
}
