install_yay() {
  check_command pacman
  check_command git

  log_info "Iniciando instalacao do yay"

  log_info "Instalando base-devel"
  sudo pacman -S --needed base-devel

  if [ -d "$HOME/yay" ]; then
    log_info "Repositorio yay ja exite."
  else
    log_info "Clonando repositorio do yay "
    git clone https://aur.archlinux.org/yay.git ~/yay

    cd ~/yay || panic "Nao foi possivel encontrar o diretorio 'yay'"

    log_info "Compilando yay"
    makepkg -si --noconfirm

    log_info "Instalacao finalizada com sucesso!"

    cd - || panic "Nao foi possivel retornar ao repositorio anterior"
  fi
}
