install_packages() {
  check_command "yay"

  log_info "Iniciando instalacao dos pacotes"
  yay -S --needed --noconfirm --answerdiff=None --answeredit=None "${PACKAGES[@]}"
  log_info "Instalacao realizada com sucesso!"
}
