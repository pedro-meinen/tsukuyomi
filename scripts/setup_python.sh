setup_python() {
  check_command zsh
  check_command uv

  log_print "Iniciando configuracao do Python"

  log_print "Instalando versoes do Python"
  uv python install "${PYTHON_VERSIONS[@]}"
  uv python update-shell

  for tool in "${UV_TOOLS[@]}"; do
    log_print "Instalando ferramenta $tool"
    uv tool install "$tool"
  done

  uv tool update-shell

  log_print "Configuracao realizada com sucesso!"
}
