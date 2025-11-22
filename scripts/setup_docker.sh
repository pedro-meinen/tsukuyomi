setup_docker() {
  log_info "Inciando configuracao do Docker"

  if ! getent group docker > /dev/null; then
    log_info "criando grudo do Docker"
    sudo groupadd docker
  fi

  log_info "Adicionando $USER ao grupo do Docker"
  sudo usermod -aG docker "$USER"

  log_info "Configuracao realizada com sucesso!"
}
